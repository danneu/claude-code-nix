# Home Manager module for Claude Code
#
# Provides:
# - Package installation with native/npm variant selection
# - Channel selection for native variant (stable/latest)
# - Declarative settings management (~/.claude/settings.json)
# - MCP server configuration (~/.claude.json)
# - Custom slash commands (~/.claude/commands/)
{
  config,
  lib,
  pkgs,
  ...
}:

with lib;

let
  cfg = config.programs.claude-code;
  package =
    if cfg.variant == "npm" then
      (if cfg.channel == "stable" then pkgs.claude-code-npm-stable else pkgs.claude-code-npm)
    else if cfg.channel == "stable" then
      pkgs.claude-code-stable
    else
      pkgs.claude-code;

  # Import merge jq functions
  smartMergeScript = import ./lib/smartmerge.nix;
  strictMergeScript = import ./lib/strictmerge.nix;

  # Generate jq expression for a given merge strategy
  jqExprForStrategy = strategy:
    if strategy == "nix-only" then
      "${strictMergeScript} strictmerge(.[1]; .[0])" # nix is source of truth
    else if strategy == "nix-wins" then
      "${smartMergeScript} smartmerge(.[1]; .[0])" # file=base, nix=over (nix wins)
    else
      "${smartMergeScript} smartmerge(.[0]; .[1])"; # nix=base, file=over (file wins)

  jqMergeExprSettings = jqExprForStrategy cfg.settingsMergeStrategy;
  jqMergeExprMcp = jqExprForStrategy cfg.mcpServersMergeStrategy;

  hasSettings = cfg.settings != { };
  hasMcpServers = cfg.mcpServers != { };

  # Recursively read a directory, returning { "relative/path.md" = "/abs/path.md"; ... }
  readDirRec =
    dir: prefix:
    lib.concatMapAttrs (
      name: type:
      if type == "directory" then
        readDirRec "${dir}/${name}" "${prefix}${name}/"
      else if type == "regular" && lib.hasSuffix ".md" name then
        { "${prefix}${name}" = "${dir}/${name}"; }
      else
        { }
    ) (builtins.readDir dir);

  # Shell function to create backup of a file before modification
  backupScript = ''
    backup_file() {
      local file_path="$1"
      if [ -f "$file_path" ]; then
        local backup_dir="$(dirname "$file_path")/.backups"
        local filename="$(basename "$file_path")"
        local timestamp=$(${pkgs.coreutils}/bin/date +%Y%m%d_%H%M%S)
        $DRY_RUN_CMD ${pkgs.coreutils}/bin/mkdir -p "$backup_dir"
        $DRY_RUN_CMD ${pkgs.coreutils}/bin/cp "$file_path" "$backup_dir/$filename.$timestamp"
        # Keep only last 5 backups
        ls -t "$backup_dir/$filename."* 2>/dev/null | tail -n +6 | xargs -r ${pkgs.coreutils}/bin/rm -f
      fi
    }
  '';

  # Shell function to print keys that will be overridden during merge
  # Usage: print_overrides "label" "new.json" "existing.json" ["jq_path"]
  printOverridesScript = ''
    print_overrides() {
      local label="$1"
      local new_file="$2"
      local existing_file="$3"
      local jq_path="''${4:-.}"

      ${pkgs.jq}/bin/jq -r --arg label "$label" --arg jq_path "$jq_path" '
        # Get objects at the specified path from both files
        (if $jq_path == "." then .[0] else .[0] | getpath($jq_path | split(".") | .[1:]) end) as $new |
        (if $jq_path == "." then .[1] else .[1] | getpath($jq_path | split(".") | .[1:]) end) as $existing |
        # For each key in new, check if it exists in existing with different value
        ($new | keys[]) as $key |
        select($existing != null) |
        select($existing | has($key)) |
        select($new[$key] != $existing[$key]) |
        "\u001b[33m[\($label)] Overriding \($key):\u001b[0m\n  Old: \($existing[$key] | @json)\n  New: \($new[$key] | @json)"
      ' -s "$new_file" "$existing_file" 2>/dev/null || true
    }
  '';

  # Build MCP server config, only including non-empty optional fields
  mkMcpServer =
    name: server:
    if server.type == "stdio" then
      {
        type = "stdio";
        command = server.command;
        args = server.args;
      }
      // optionalAttrs (server.env != { }) { env = server.env; }
    else
      {
        type = server.type;
        url = server.url;
      }
      // optionalAttrs (server.headers != { }) { headers = server.headers; };
in
{
  # Disable home-manager's built-in claude-code module to avoid collision
  disabledModules = [ "programs/claude-code.nix" ];

  options.programs.claude-code = {
    enable = mkEnableOption "Claude Code";

    variant = mkOption {
      type = types.enum [
        "native"
        "npm"
      ];
      default = "native";
      description = ''
        Which Claude Code variant to use:
        - "native": Official native binary (recommended, faster startup)
        - "npm": npm package (alternative for systems with issues on native)
      '';
    };

    channel = mkOption {
      type = types.enum [
        "stable"
        "latest"
      ];
      default = "latest";
      description = "Release channel: 'stable' or 'latest' (applies to both native and npm variants)";
    };

    settings = mkOption {
      type = types.attrs;
      default = { };
      description = "Settings to merge into ~/.claude/settings.json";
      example = literalExpression ''
        {
          env = {
            MAX_THINKING_TOKENS = "10000";
          };
          alwaysThinkingEnabled = true;
        }
      '';
    };

    mcpServers = mkOption {
      type = types.attrsOf (
        types.submodule {
          options = {
            type = mkOption {
              type = types.enum [
                "stdio"
                "http"
                "sse"
              ];
              default = "stdio";
              description = "Transport type: stdio (local), http (remote), sse (deprecated)";
            };
            command = mkOption {
              type = types.nullOr types.str;
              default = null;
              description = "Command to run the MCP server (for stdio type)";
              example = "pnpm";
            };
            args = mkOption {
              type = types.listOf types.str;
              default = [ ];
              description = "Arguments to pass to the command (for stdio type)";
              example = [
                "dlx"
                "@playwright/mcp@latest"
                "--headless"
              ];
            };
            url = mkOption {
              type = types.nullOr types.str;
              default = null;
              description = "URL of the MCP server (for http/sse types)";
              example = "https://mcp.example.com";
            };
            headers = mkOption {
              type = types.attrsOf types.str;
              default = { };
              description = "HTTP headers (for http/sse types)";
            };
            env = mkOption {
              type = types.attrsOf types.str;
              default = { };
              description = "Environment variables for the server";
            };
          };
        }
      );
      default = { };
      description = "MCP servers to add to ~/.claude.json (user scope)";
      example = literalExpression ''
        {
          playwright = {
            command = "pnpm";
            args = [ "dlx" "@playwright/mcp@latest" "--headless" ];
          };
          notion = {
            type = "http";
            url = "https://mcp.notion.com/mcp";
          };
        }
      '';
    };

    settingsMergeStrategy = mkOption {
      type = types.enum [
        "file-wins"
        "nix-wins"
        "nix-only"
      ];
      default = "nix-wins";
      description = ''
        Merge strategy for ~/.claude/settings.json:
        - "file-wins": existing file values take precedence
        - "nix-wins": nix config values take precedence (default)
        - "nix-only": nix is source of truth, removes keys not in nix config
      '';
    };

    mcpServersMergeStrategy = mkOption {
      type = types.enum [
        "file-wins"
        "nix-wins"
        "nix-only"
      ];
      default = "nix-wins";
      description = ''
        Merge strategy for mcpServers in ~/.claude.json:
        - "file-wins": existing file values take precedence
        - "nix-wins": nix config values take precedence (default)
        - "nix-only": nix is source of truth, removes servers not in nix config
      '';
    };

    printOverrides = mkOption {
      type = types.bool;
      default = true;
      description = "Print old values when config keys are overridden during activation";
    };

    failOnOverrides = mkOption {
      type = types.bool;
      default = false;
      description = "Fail activation if config keys would be overridden (strict mode)";
    };

    backupBeforeMerge = mkOption {
      type = types.bool;
      default = false;
      description = "Create timestamped backups in .backups/ before modifying config files";
    };

    configDir = mkOption {
      type = types.str;
      default = "${config.home.homeDirectory}/.claude";
      description = "Path to Claude's config directory";
    };

    commandsDir = mkOption {
      type = types.nullOr types.path;
      default = null;
      description = "Directory containing custom slash command .md files (supports nested directories) https://code.claude.com/docs/en/slash-commands#custom-slash-commands";
      example = literalExpression "./claude-commands";
    };
  };

  config = mkIf cfg.enable (mkMerge [

    # Base config: package and PATH setup
    {
      home.packages = [ package ];
      # This is what native install wants.
      # TODO: Not sure if it matters for the node variant?
      home.sessionPath = [ "$HOME/.local/bin" ];
      home.file.".local/bin/claude".source = "${package}/bin/claude";
    }

    # Settings config (only when settings defined)
    (mkIf hasSettings {
      # Create default settings on first run (doesn't overwrite existing)
      home.activation.claudeCodeDefaults = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
                SETTINGS_PATH="${cfg.configDir}/settings.json"
                if [ ! -f "$SETTINGS_PATH" ]; then
                  $DRY_RUN_CMD mkdir -p "$(dirname "$SETTINGS_PATH")"
                  $DRY_RUN_CMD cat > "$SETTINGS_PATH" <<'EOF'
        ${builtins.toJSON cfg.settings}
        EOF
                fi
      '';

      # Merge nix settings into existing file
      home.activation.claudeCodeSettingsSync = lib.hm.dag.entryAfter [ "claudeCodeDefaults" ] ''
                ${optionalString cfg.backupBeforeMerge backupScript}
                ${optionalString cfg.printOverrides printOverridesScript}
                SETTINGS_PATH="${cfg.configDir}/settings.json"
                if [ -f "$SETTINGS_PATH" ]; then
                  ${optionalString cfg.backupBeforeMerge "backup_file \"$SETTINGS_PATH\""}
                  SETTINGS_TEMP=$(${pkgs.coreutils}/bin/mktemp)
                  SETTINGS_TEMP_DEFAULTS="$SETTINGS_TEMP.defaults"
                  _cleanup_settings() { ${pkgs.coreutils}/bin/rm -f "$SETTINGS_TEMP" "$SETTINGS_TEMP_DEFAULTS" 2>/dev/null || true; }
                  trap _cleanup_settings EXIT
                  cat > "$SETTINGS_TEMP_DEFAULTS" <<'DEFAULTS_EOF'
        ${builtins.toJSON cfg.settings}
        DEFAULTS_EOF
                  ${optionalString cfg.printOverrides ''
                    # Print any keys that will be overridden
                                      print_overrides "settings.json" "$SETTINGS_TEMP_DEFAULTS" "$SETTINGS_PATH"''}
                  ${optionalString cfg.failOnOverrides ''
                    # Check for overrides and fail if any found
                    OVERRIDE_COUNT=$(print_overrides "settings.json" "$SETTINGS_TEMP_DEFAULTS" "$SETTINGS_PATH" 2>/dev/null | grep -c "Overriding" || echo 0)
                    if [ "$OVERRIDE_COUNT" -gt 0 ]; then
                      echo "ERROR: $OVERRIDE_COUNT override(s) detected in settings.json. Set failOnOverrides = false to allow." >&2
                      exit 1
                    fi''}
                  $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s '${jqMergeExprSettings}' "$SETTINGS_TEMP_DEFAULTS" "$SETTINGS_PATH" > "$SETTINGS_TEMP"
                  $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$SETTINGS_TEMP" "$SETTINGS_PATH"
                  _cleanup_settings
                  trap - EXIT
                fi
      '';
    })

    # Set installMethod in ~/.claude.json based on variant
    # Valid config values: "native", "global", "local"
    {
      home.activation.claudeCodeInstallMethod = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        CLAUDE_JSON="${config.home.homeDirectory}/.claude.json"
        # Create empty file if it doesn't exist (respecting dry-run)
        if [ ! -f "$CLAUDE_JSON" ]; then
          INIT_TEMP=$(${pkgs.coreutils}/bin/mktemp)
          echo '{}' > "$INIT_TEMP"
          $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$INIT_TEMP" "$CLAUDE_JSON"
        fi
        # Set installMethod based on variant
        INSTALL_METHOD="${if cfg.variant == "npm" then "global" else "native"}"
        INSTALL_TEMP=$(${pkgs.coreutils}/bin/mktemp)
        _cleanup_install() { ${pkgs.coreutils}/bin/rm -f "$INSTALL_TEMP" 2>/dev/null || true; }
        trap _cleanup_install EXIT
        $DRY_RUN_CMD ${pkgs.jq}/bin/jq --arg method "$INSTALL_METHOD" '.installMethod = $method' "$CLAUDE_JSON" > "$INSTALL_TEMP"
        $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$INSTALL_TEMP" "$CLAUDE_JSON"
        _cleanup_install
        trap - EXIT
      '';
    }

    # MCP servers config (only when mcpServers defined)
    (mkIf hasMcpServers {
      home.activation.claudeCodeMcpServers = lib.hm.dag.entryAfter [ "claudeCodeInstallMethod" ] ''
                ${optionalString cfg.backupBeforeMerge backupScript}
                ${optionalString cfg.printOverrides printOverridesScript}
                MCP_PATH="${config.home.homeDirectory}/.claude.json"
                ${optionalString cfg.backupBeforeMerge "backup_file \"$MCP_PATH\""}
                MCP_TEMP=$(${pkgs.coreutils}/bin/mktemp)
                MCP_TEMP_NIX="$MCP_TEMP.nix"
                _cleanup_mcp() { ${pkgs.coreutils}/bin/rm -f "$MCP_TEMP" "$MCP_TEMP_NIX" 2>/dev/null || true; }
                trap _cleanup_mcp EXIT
                cat > "$MCP_TEMP_NIX" <<'NIX_EOF'
        ${builtins.toJSON {
          mcpServers = mapAttrs mkMcpServer cfg.mcpServers;
        }}
        NIX_EOF
                # Create empty file if it doesn't exist (respecting dry-run)
                if [ ! -f "$MCP_PATH" ]; then
                  MCP_INIT_TEMP=$(${pkgs.coreutils}/bin/mktemp)
                  echo '{}' > "$MCP_INIT_TEMP"
                  $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$MCP_INIT_TEMP" "$MCP_PATH"
                fi
                ${optionalString cfg.printOverrides ''
                  # Print any MCP servers that will be overridden
                                  print_overrides "mcpServers" "$MCP_TEMP_NIX" "$MCP_PATH" ".mcpServers"''}
                ${optionalString cfg.failOnOverrides ''
                  # Check for overrides and fail if any found
                  OVERRIDE_COUNT=$(print_overrides "mcpServers" "$MCP_TEMP_NIX" "$MCP_PATH" ".mcpServers" 2>/dev/null | grep -c "Overriding" || echo 0)
                  if [ "$OVERRIDE_COUNT" -gt 0 ]; then
                    echo "ERROR: $OVERRIDE_COUNT override(s) detected in mcpServers. Set failOnOverrides = false to allow." >&2
                    exit 1
                  fi''}
                # Deep merge using configured strategy
                $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s '${jqMergeExprMcp}' "$MCP_TEMP_NIX" "$MCP_PATH" > "$MCP_TEMP"
                $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$MCP_TEMP" "$MCP_PATH"
                _cleanup_mcp
                trap - EXIT
      '';
    })

    # Custom slash commands (only when commandsDir defined)
    (mkIf (cfg.commandsDir != null) {
      home.file = mapAttrs' (relativePath: sourcePath: {
        name = ".claude/commands/${relativePath}";
        value = {
          source = sourcePath;
        };
      }) (readDirRec cfg.commandsDir "");
    })
  ]);
}
