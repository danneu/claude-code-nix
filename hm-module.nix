# Home Manager module for Claude Code
#
# Provides:
# - Package installation with native/npm variant selection
# - Channel selection for native variant (stable/latest)
# - Declarative settings management (~/.claude/settings.json)
# - MCP server configuration (~/.claude.json)
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
      pkgs.claude-code-npm
    else if cfg.channel == "stable" then
      pkgs.claude-code-stable
    else
      pkgs.claude-code;
  jqMergeExpr =
    if cfg.mergeStrategy == "nix-wins" then
      "'.[1] * .[0]'" # file first, then config overwrites
    else
      "'.[0] * .[1]'"; # config first, then file overwrites
  hasSettings = cfg.settings != { };
  hasMcpServers = cfg.mcpServers != { };

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
      description = "Release channel for native variant: 'stable' or 'latest'";
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

    mergeStrategy = mkOption {
      type = types.enum [
        "file-wins"
        "nix-wins"
      ];
      default = "nix-wins";
      description = ''
        How to handle conflicts when deep-merging JSON:
        - "file-wins": existing file values take precedence
        - "nix-wins": nix config values take precedence (default)
      '';
    };

    printOverrides = mkOption {
      type = types.bool;
      default = false;
      description = "Print old values when config keys are overridden during activation";
    };

    configDir = mkOption {
      type = types.str;
      default = "${config.home.homeDirectory}/.claude";
      description = "Path to Claude's config directory";
    };
  };

  config = mkIf cfg.enable (mkMerge [
    # Assertions
    {
      assertions = [
        {
          assertion = cfg.variant == "native" || cfg.channel == "latest";
          message = "programs.claude-code: 'channel' option only applies to native variant. Remove 'channel' when using variant = \"npm\".";
        }
      ];
    }

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
                ${optionalString cfg.printOverrides printOverridesScript}
                SETTINGS_PATH="${cfg.configDir}/settings.json"
                if [ -f "$SETTINGS_PATH" ]; then
                  TEMP_FILE=$(${pkgs.coreutils}/bin/mktemp)
                  cat > "$TEMP_FILE.defaults" <<'DEFAULTS_EOF'
        ${builtins.toJSON cfg.settings}
        DEFAULTS_EOF
                  ${optionalString cfg.printOverrides ''# Print any keys that will be overridden
                  print_overrides "settings.json" "$TEMP_FILE.defaults" "$SETTINGS_PATH"''}
                  $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s ${jqMergeExpr} "$TEMP_FILE.defaults" "$SETTINGS_PATH" > "$TEMP_FILE"
                  $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$TEMP_FILE" "$SETTINGS_PATH"
                  $DRY_RUN_CMD ${pkgs.coreutils}/bin/rm -f "$TEMP_FILE.defaults"
                fi
      '';
    })

    # Set installMethod in ~/.claude.json based on variant
    # Valid config values: "native", "global", "local"
    {
      home.activation.claudeCodeInstallMethod = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
                CLAUDE_JSON="${config.home.homeDirectory}/.claude.json"
                # Create empty file if it doesn't exist
                if [ ! -f "$CLAUDE_JSON" ]; then
                  echo '{}' > "$CLAUDE_JSON"
                fi
                # Set installMethod based on variant
                INSTALL_METHOD="${if cfg.variant == "npm" then "global" else "native"}"
                TEMP_FILE=$(${pkgs.coreutils}/bin/mktemp)
                $DRY_RUN_CMD ${pkgs.jq}/bin/jq --arg method "$INSTALL_METHOD" '.installMethod = $method' "$CLAUDE_JSON" > "$TEMP_FILE"
                $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$TEMP_FILE" "$CLAUDE_JSON"
      '';
    }

    # MCP servers config (only when mcpServers defined)
    (mkIf hasMcpServers {
      home.activation.claudeCodeMcpServers = lib.hm.dag.entryAfter [ "claudeCodeInstallMethod" ] ''
                ${optionalString cfg.printOverrides printOverridesScript}
                MCP_PATH="${config.home.homeDirectory}/.claude.json"
                TEMP_FILE=$(${pkgs.coreutils}/bin/mktemp)
                cat > "$TEMP_FILE.nix" <<'NIX_EOF'
        ${builtins.toJSON {
          mcpServers = mapAttrs mkMcpServer cfg.mcpServers;
        }}
        NIX_EOF
                # Create empty file if it doesn't exist
                if [ ! -f "$MCP_PATH" ]; then
                  echo '{}' > "$MCP_PATH"
                fi
                ${optionalString cfg.printOverrides ''# Print any MCP servers that will be overridden
                print_overrides "mcpServers" "$TEMP_FILE.nix" "$MCP_PATH" ".mcpServers"''}
                # Deep merge: nix config wins for mcpServers
                $DRY_RUN_CMD ${pkgs.jq}/bin/jq -s ${jqMergeExpr} "$TEMP_FILE.nix" "$MCP_PATH" > "$TEMP_FILE"
                $DRY_RUN_CMD ${pkgs.coreutils}/bin/mv "$TEMP_FILE" "$MCP_PATH"
                $DRY_RUN_CMD ${pkgs.coreutils}/bin/rm -f "$TEMP_FILE.nix"
      '';
    })
  ]);
}
