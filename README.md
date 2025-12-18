# claude-code-nix

Nix flake for [Claude Code](https://claude.ai/code) with support for both the native binary and Node.js variants.

## Variants

| Variant    | Description                               | Packages                         |
| ---------- | ----------------------------------------- | -------------------------------- |
| **Native** | Official native binary                    | `native-latest`, `native-stable` |
| **NPM**    | npm package (`@anthropic-ai/claude-code`) | `npm`                            |

Supported systems: `aarch64-darwin`, `x86_64-linux`, `aarch64-linux`

## Installation

Add to your flake inputs:

```nix
inputs.claude-code.url = "github:danneu/claude-code-nix";
```

Add the overlay and home-manager module:

```nix
nixpkgs.overlays = [ claude-code.overlays.default ];
home-manager.sharedModules = [ claude-code.homeManagerModules.default ];
```

Enable in home.nix:

```nix
programs.claude-code = {
  enable = true;
  variant = "native";  # "native" (default) or "npm"
  channel = "latest";  # "latest" (default) or "stable" - only for native variant
};
```

## Standalone Usage

Build directly without home-manager:

```bash
# Native binary
nix build github:danneu/claude-code-nix#native-latest
nix build github:danneu/claude-code-nix#native-stable

# npm version
nix build github:danneu/claude-code-nix#npm
```

## Configuration Options

```nix
programs.claude-code = {
  enable = true;

  # Which variant to use
  variant = "native";  # "native" (default) or "npm"

  # Release channel (only applies to native variant)
  channel = "latest";  # "latest" (default) or "stable"

  # Merge strategy for JSON config files
  # "nix-wins" (default): nix values override existing file values
  # "file-wins": existing file values take precedence
  mergeStrategy = "nix-wins";

  # Settings merged into ~/.claude/settings.json
  settings = {
    alwaysThinkingEnabled = true;
    env = {
      MAX_THINKING_TOKENS = "16000";
    };
  };

  # MCP servers merged into ~/.claude.json
  mcpServers = {
    # stdio server example
    playwright = {
      type = "stdio";
      command = "npx";
      args = [ "-y" "@playwright/mcp@latest" ];
      env = { };
    };
    # http server example
    my-server = {
      type = "http";
      url = "http://localhost:3000/mcp";
      headers = { };
    };
  };
};
```

## Overlay Packages

When using the overlay, these packages are available:

```nix
pkgs.claude-code        # native binary (latest channel)
pkgs.claude-code-stable # native binary (stable channel)
pkgs.claude-code-npm    # npm version
```

## Development

Update scripts for maintainers:

```bash
./scripts/update-native.sh        # Update native binary (stable + latest)
./scripts/update-native.sh latest # Update only latest channel
./scripts/update-npm.sh           # Update npm package
./scripts/update-all.sh           # Update everything
```
