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

  # Paths nix owns outright (see Ownership below)
  settingsOwnedPaths = [ "autoMode" ];
  claudeJsonOwnedPaths = [ "mcpServers" ];

  # Optional behaviors
  printOverrides = true;      # Log when nix overrides or removes existing values
  backupBeforeMerge = false;  # Backup configs before modifying
};
```

## Ownership

Both `~/.claude/settings.json` and `~/.claude.json` have two writers: this
module and the Claude Code app itself. Every merge is therefore:

1. A deep merge with nix winning. Keys nix sets win; arrays, scalars and empty
   objects replace wholesale; keys only the app wrote survive.
2. Then, for each declared owned path, nix's value **replaces** the file's
   subtree wholesale -- and if nix defines nothing there, the path is
   **removed**.

Step 1 alone cannot express "nix owns this subtree; absent means delete", which
is why owned paths exist. A stale entry the app wrote under an owned path goes
away on the next activation instead of being preserved forever.

```nix
# nix owns autoMode: whatever `/auto-mode-setup` wrote there is replaced by
# this value on every activation, and nothing outside autoMode is touched.
settings.autoMode.allow = [ "$defaults" ];
settingsOwnedPaths = [ "autoMode" ];
```

Paths are dot-separated (`"autoMode"`, `"env.MAX_THINKING_TOKENS"`); keys
containing literal dots cannot be addressed. Deletion is destructive by design,
so `backupBeforeMerge = true` is worth setting alongside it. With
`printOverrides` on, activation prints each removal with its old value.

Ownership is opt-in and bounded: **only** the paths you list are ever removed.
There is no whole-document "nix is the source of truth" mode, because both
files carry app state -- `tui`, `voiceEnabled`, and friends in `settings.json`;
`projects` and `oauthAccount` in `~/.claude.json` -- that nix does not model
and must not delete.

Note that `mcpServers` and `claudeJson` merge into a single `~/.claude.json`
document in one pass, so `claudeJsonOwnedPaths = [ "mcpServers" ]` means nix
owns the server set. Defining servers through both the `mcpServers` option and
a `claudeJson.mcpServers` key is an eval-time error rather than a silent
precedence rule.

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
