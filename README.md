# claude-code-nix

Nix flake for [Claude Code](https://claude.ai/code).

## Packages

| Package | Description |
|---------|-------------|
| `native-latest` | Native binary, latest channel |
| `native-stable` | Native binary, stable channel |
| `npm-latest` | npm package, latest channel |
| `npm-stable` | npm package, stable channel |

Supported: `aarch64-darwin`, `x86_64-linux`, `aarch64-linux`

## Version Pinning

Pin to a specific version using git tags:

```nix
# Pin to npm 2.1.2
inputs.claude-code.url = "github:danneu/claude-code-nix?ref=npm-2.1.2";

# Pin to native 2.0.75
inputs.claude-code.url = "github:danneu/claude-code-nix?ref=native-2.0.75";
```

Tags follow the `latest` channel. Available tags: `npm-X.Y.Z`, `native-X.Y.Z`

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
nix build github:danneu/claude-code-nix#native-latest
nix run github:danneu/claude-code-nix#npm-stable
```

## Options

```nix
programs.claude-code = {
  enable = true;
  variant = "native";  # "native" | "npm"
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
pkgs.claude-code          # native-latest
pkgs.claude-code-stable   # native-stable
pkgs.claude-code-npm      # npm-latest
pkgs.claude-code-npm-stable
```
