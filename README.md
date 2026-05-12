# claude-code-nix

Nix flake for [Claude Code](https://claude.ai/code).

## Packages

| Package | Description |
|---------|-------------|
| `latest` | Native binary, latest channel |
| `stable` | Native binary, stable channel |
| `default` | Alias for `latest` |

Supported: `aarch64-darwin`, `x86_64-linux`, `aarch64-linux`

## Version Pinning

Pin to a specific version using git tags:

```nix
# Pin to 2.1.139
inputs.claude-code.url = "github:danneu/claude-code-nix?ref=v2.1.139";
```

Tags follow the `latest` channel as `vX.Y.Z`.

## Quick Start

```nix
# flake.nix
inputs.claude-code.url = "github:danneu/claude-code-nix";

# configuration.nix or home.nix
nixpkgs.overlays = [ inputs.claude-code.overlays.default ];
home-manager.sharedModules = [ inputs.claude-code.homeManagerModules.default ];
```

```nix
# home.nix
programs.claude-code.enable = true;
```

## Standalone

```bash
nix build github:danneu/claude-code-nix#latest
nix run github:danneu/claude-code-nix#stable
```

## Options

```nix
programs.claude-code = {
  enable = true;
  channel = "latest";  # "latest" | "stable"

  # ~/.claude/settings.json
  settings = {
    alwaysThinkingEnabled = true;
    env.MAX_THINKING_TOKENS = "16000";
  };

  # ~/.claude.json mcpServers
  mcpServers = {
    playwright = {
      command = "npx";
      args = [ "-y" "@playwright/mcp@latest" ];
    };
  };

  # Custom slash commands from a directory
  commandsDir = ./claude-commands;

  # Merge strategies: "nix-wins" (default) | "file-wins" | "nix-only"
  settingsMergeStrategy = "nix-wins";
  mcpServersMergeStrategy = "nix-wins";

  # Optional behaviors
  printOverrides = true;      # Log when nix overrides existing values
  backupBeforeMerge = false;  # Backup configs before modifying
};
```

## Overlay

```nix
pkgs.claude-code          # latest
pkgs.claude-code-stable   # stable
```

## Development

```bash
# Run tests
nix flake check

# Run tests with verbose output (shows test names)
nix flake check -L
```
