# claude-code-nix

Nix flake for [Claude Code](https://claude.ai/code) using the official native binary.

- Supported systems: `aarch64-darwin` `x86_64-linux` `aarch64-linux`

## Why?

I want features that other HM modules usually don't implement:

- Uses native binary, not the old Node.js implementation
- Automatic hourly update checks via GitHub Actions
- Merges your nix settings into `~/.claude.json`

## Installation

Add to your flake:

```nix
inputs.claude-code.url = "github:danneu/claude-code-nix";
```

Add overlay and home-manager module:

```nix
nixpkgs.overlays = [ claude-code.overlays.default ];
home-manager.sharedModules = [ claude-code.homeManagerModules.default ];
```

Enable in home.nix:

```nix
programs.claude-code = {
  enable = true;
  channel = "latest";  # "latest" (default) or "stable"

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
      type = "stdio"
      command = "npx";
      args = [
        "-y"
        "@playwright/mcp@latest"
      ];
      env = { /* custom env vars */ }
    };
    # http server example
    my-server = {
      type = "http";
      url = "http://localhost:3000/mcp";
      headers = { /* custom headers */ }
    };
  };

};
```

## Development

Check Anthropic's url for new version and create a new release if needed:

```bash
./scripts/update-version.sh
```
