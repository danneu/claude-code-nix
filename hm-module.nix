# Home Manager module for Claude Code
#
# Provides:
# - Package installation with stable/latest channel selection
# - Declarative settings management (~/.claude/settings.json)
# - MCP server configuration (~/.claude.json)
# - Per-path nix ownership (settingsOwnedPaths / claudeJsonOwnedPaths)
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
    if cfg.channel == "stable" then
      pkgs.claude-code-stable
    else
      pkgs.claude-code;

  # Import merge jq functions
  deepDiffScript = import ./lib/deepdiff.nix;
  mergeExpr = import ./lib/mergeexpr.nix;

  # ~/.claude/settings.json
  jqMergeExprSettings = mergeExpr.merge cfg.settingsOwnedPaths;
  jqRemovalsExprSettings = mergeExpr.removals cfg.settingsOwnedPaths;

  # ~/.claude.json: the typed mcpServers option and the free-form claudeJson
  # attrs fold into one nix document applied in a single pass, so the two can
  # no longer race over the same file and `claudeJsonOwnedPaths = [ "mcpServers" ]`
  # means "nix owns the server set". Defining servers both ways is an assertion
  # below, not a silent precedence rule.
  claudeJsonDoc =
    optionalAttrs (cfg.mcpServers != { }) {
      mcpServers = mapAttrs mkMcpServer cfg.mcpServers;
    }
    // cfg.claudeJson;

  jqMergeExprClaudeJson = mergeExpr.merge cfg.claudeJsonOwnedPaths;
  jqRemovalsExprClaudeJson = mergeExpr.removals cfg.claudeJsonOwnedPaths;

  # Declaring an owned path is itself configuration: a file's sync must run
  # when nix claims paths in it, even if nix sets no keys there, or the
  # ownership deletion would never happen.
  hasSettings = cfg.settings != { } || cfg.settingsOwnedPaths != [ ];
  hasClaudeJson = claudeJsonDoc != { } || cfg.claudeJsonOwnedPaths != [ ];

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

  # Shell function to print leaf-level diffs using deepdiff (for nested objects like .claude.json)
  # Usage: print_overrides_deep "label" "new.json" "existing.json"
  printOverridesDeepScript = ''
    print_overrides_deep() {
      local label="$1"
      local new_file="$2"
      local existing_file="$3"

      ${pkgs.jq}/bin/jq -r --arg label "$label" '
        ${deepDiffScript}
        . as [$nix, $existing] |
        deepdiff($existing; $nix; "") |
        "\u001b[33m[\($label)] Overriding \(.path):\u001b[0m\n  Old: \(if .old == null then "(new key)" else (.old | @json) end)\n  New: \(.new | @json)"
      ' -s "$new_file" "$existing_file" 2>/dev/null || true
    }
  '';

  # Emit a "Removing <path>" line for each owned path the merge will delete.
  # Ownership is the only way this module deletes anything, so activation says
  # so out loud and prints the old value alongside it.
  # Usage: printRemovals "label" <removals jq expr> "$NIX_FILE" "$TARGET_FILE"
  printRemovals =
    label: removalsExpr: nixFile: targetFile:
    ''
      ${pkgs.jq}/bin/jq -r --arg label "${label}" '
        ${removalsExpr}
        | "\u001b[31m[\($label)] Removing \(.path) (owned by nix):\u001b[0m\n  Old: \(.old | @json)"
      ' -s "${nixFile}" "${targetFile}" 2>/dev/null || true
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

    channel = mkOption {
      type = types.enum [
        "stable"
        "latest"
      ];
      default = "latest";
      description = "Release channel: 'stable' or 'latest'";
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

    settingsOwnedPaths = mkOption {
      type = types.listOf types.str;
      default = [ ];
      description = ''
        Dot-separated key paths in ~/.claude/settings.json that nix owns
        outright.

        Everything outside these paths is deep-merged with nix winning, so keys
        the app writes and nix does not set survive. At an owned path, nix's
        value replaces the file's subtree wholesale, and if nix defines nothing
        there the path is removed -- which is how you express "nix owns this
        subtree; absent means delete".

        Ownership is destructive by design; consider backupBeforeMerge.
        Keys containing literal dots cannot be addressed.
      '';
      example = literalExpression ''[ "autoMode" "env.MAX_THINKING_TOKENS" ]'';
    };

    claudeJson = mkOption {
      type = types.attrs;
      default = { };
      description = "Arbitrary keys to merge into ~/.claude.json";
      example = literalExpression ''
        {
          cachedGrowthBookFeatures = {
            tengu_copper_bridge = false;
          };
        }
      '';
    };

    claudeJsonOwnedPaths = mkOption {
      type = types.listOf types.str;
      default = [ ];
      description = ''
        Dot-separated key paths in ~/.claude.json that nix owns outright.

        Same semantics as settingsOwnedPaths. Note that ~/.claude.json holds
        app state such as `projects` and `oauthAccount`; only paths listed here
        are ever removed, so leaving this empty cannot delete anything.

        `[ "mcpServers" ]` means nix owns the server set: servers added by
        `claude mcp add` that nix does not declare are removed on activation.
      '';
      example = literalExpression ''[ "mcpServers" ]'';
    };

    printOverrides = mkOption {
      type = types.bool;
      default = true;
      description = "Print old values when config keys are overridden during activation";
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
      # mcpServers and claudeJson.mcpServers now fold into one document, so a
      # config that sets both is ambiguous about which wins. Fail rather than
      # silently discarding one of them.
      assertions = [
        {
          assertion = !(cfg.mcpServers != { } && cfg.claudeJson ? mcpServers);
          message = ''
            programs.claude-code: MCP servers are defined twice -- both in the
            `mcpServers` option and as a `claudeJson.mcpServers` key. They merge
            into the same ~/.claude.json document, so one would silently win.
            Define the servers in exactly one of the two.
          '';
        }
      ];

      home.packages = [ package ];
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
                  ${optionalString (cfg.printOverrides && cfg.settingsOwnedPaths != [ ]) (
                    printRemovals "settings.json" jqRemovalsExprSettings "$SETTINGS_TEMP_DEFAULTS" "$SETTINGS_PATH"
                  )}
                  $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s '${jqMergeExprSettings}' "$SETTINGS_TEMP_DEFAULTS" "$SETTINGS_PATH" > "$SETTINGS_TEMP"
                  $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$SETTINGS_TEMP" "$SETTINGS_PATH"
                  _cleanup_settings
                  trap - EXIT
                fi
      '';
    })

    # Set installMethod in ~/.claude.json.
    # Valid config values: "native", "global", "local".
    {
      home.activation.claudeCodeInstallMethod = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        CLAUDE_JSON="${config.home.homeDirectory}/.claude.json"
        # Create empty file if it doesn't exist (respecting dry-run)
        if [ ! -f "$CLAUDE_JSON" ]; then
          INIT_TEMP=$(${pkgs.coreutils}/bin/mktemp)
          echo '{}' > "$INIT_TEMP"
          $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$INIT_TEMP" "$CLAUDE_JSON"
        fi
        INSTALL_TEMP=$(${pkgs.coreutils}/bin/mktemp)
        _cleanup_install() { ${pkgs.coreutils}/bin/rm -f "$INSTALL_TEMP" 2>/dev/null || true; }
        trap _cleanup_install EXIT
        $DRY_RUN_CMD ${pkgs.jq}/bin/jq '.installMethod = "native"' "$CLAUDE_JSON" > "$INSTALL_TEMP"
        $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$INSTALL_TEMP" "$CLAUDE_JSON"
        _cleanup_install
        trap - EXIT
      '';
    }

    # ~/.claude.json sync: mcpServers and claudeJson in a single pass.
    #
    # These were two activation steps merging into the same file with no
    # ordering between them, so overlapping keys resolved by incidental DAG
    # order. One step, one nix document, one merge.
    (mkIf hasClaudeJson {
      home.activation.claudeCodeClaudeJsonSync = lib.hm.dag.entryAfter [ "claudeCodeInstallMethod" ] ''
                ${optionalString cfg.backupBeforeMerge backupScript}
                ${optionalString cfg.printOverrides printOverridesDeepScript}
                CLAUDE_JSON="${config.home.homeDirectory}/.claude.json"
                ${optionalString cfg.backupBeforeMerge "backup_file \"$CLAUDE_JSON\""}
                CLAUDE_JSON_TEMP=$(${pkgs.coreutils}/bin/mktemp)
                CLAUDE_JSON_TEMP_NIX="$CLAUDE_JSON_TEMP.nix"
                _cleanup_claude_json() { ${pkgs.coreutils}/bin/rm -f "$CLAUDE_JSON_TEMP" "$CLAUDE_JSON_TEMP_NIX" 2>/dev/null || true; }
                trap _cleanup_claude_json EXIT
                cat > "$CLAUDE_JSON_TEMP_NIX" <<'CLAUDE_JSON_NIX_EOF'
      ${builtins.toJSON claudeJsonDoc}
      CLAUDE_JSON_NIX_EOF
                ${optionalString cfg.printOverrides ''
                  print_overrides_deep ".claude.json" "$CLAUDE_JSON_TEMP_NIX" "$CLAUDE_JSON"''}
                ${optionalString (cfg.printOverrides && cfg.claudeJsonOwnedPaths != [ ]) (
                  printRemovals ".claude.json" jqRemovalsExprClaudeJson "$CLAUDE_JSON_TEMP_NIX" "$CLAUDE_JSON"
                )}
                $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s '${jqMergeExprClaudeJson}' "$CLAUDE_JSON_TEMP_NIX" "$CLAUDE_JSON" > "$CLAUDE_JSON_TEMP"
                $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$CLAUDE_JSON_TEMP" "$CLAUDE_JSON"
                _cleanup_claude_json
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
