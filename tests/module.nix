# Module-level proofs (PO6, PO7).
#
# The jq tests in ./default.nix cover the merge expression, but they cannot see
# an activation step that was never emitted, nor an eval-time assertion. These
# evaluate the home-manager module against a stub of the few `home.*` options it
# touches, and assert on the resulting config.
{ pkgs }:

let
  lib = pkgs.lib;

  # home-manager extends lib with its activation-DAG helpers; stub the two the
  # module uses so evalModules can run without home-manager as an input.
  hmLib = lib // {
    hm.dag = {
      entryAfter = after: data: {
        inherit after data;
        before = [ ];
      };
      entryAnywhere = data: {
        inherit data;
        after = [ ];
        before = [ ];
      };
    };
  };

  stubHome =
    { lib, ... }:
    {
      options = {
        assertions = lib.mkOption {
          type = lib.types.listOf lib.types.unspecified;
          default = [ ];
        };
        home = {
          homeDirectory = lib.mkOption {
            type = lib.types.str;
            default = "/home/test";
          };
          packages = lib.mkOption {
            type = lib.types.listOf lib.types.raw;
            default = [ ];
          };
          sessionPath = lib.mkOption {
            type = lib.types.listOf lib.types.str;
            default = [ ];
          };
          activation = lib.mkOption {
            type = lib.types.attrsOf lib.types.raw;
            default = { };
          };
          file = lib.mkOption {
            type = lib.types.attrsOf lib.types.raw;
            default = { };
          };
        };
      };
    };

  evalCfg =
    module:
    (lib.evalModules {
      modules = [
        stubHome
        ../hm-module.nix
        { _module.args.pkgs = pkgs; }
        module
      ];
      specialArgs = { lib = hmLib; };
    }).config;

  failedAssertions = cfg: builtins.filter (a: !a.assertion) cfg.assertions;

  # A passing test is an empty output file; a failing one fails the build with
  # the assertion name, which is what `nix flake check` reports.
  mkTest =
    name: cond:
    pkgs.runCommand "module-${name}" { } (
      if cond then "touch $out" else "echo 'module test failed: ${name}' >&2; exit 1"
    );

  # PO7 fixtures: the only claim on each file is a non-empty owned-paths list.
  ownedSettingsOnly = evalCfg {
    programs.claude-code = {
      enable = true;
      settingsOwnedPaths = [ "autoMode" ];
    };
  };

  ownedClaudeJsonOnly = evalCfg {
    programs.claude-code = {
      enable = true;
      claudeJsonOwnedPaths = [ "mcpServers" ];
    };
  };

  # A config that claims nothing at all should emit neither sync step.
  claimsNothing = evalCfg { programs.claude-code.enable = true; };

  # PO6 fixtures.
  serversTwice = evalCfg {
    programs.claude-code = {
      enable = true;
      mcpServers.playwright.command = "npx";
      claudeJson.mcpServers.notion = { };
    };
  };

  serversViaOption = evalCfg {
    programs.claude-code = {
      enable = true;
      mcpServers.playwright.command = "npx";
    };
  };

  serversViaClaudeJson = evalCfg {
    programs.claude-code = {
      enable = true;
      claudeJson.mcpServers.notion = { };
    };
  };
in
{
  # === PO7: owned paths alone gate the sync step on ===
  module-owned-settings-emits-sync =
    mkTest "settingsOwnedPaths alone emits claudeCodeSettingsSync"
      (ownedSettingsOnly.home.activation ? claudeCodeSettingsSync);

  module-owned-claudejson-emits-sync =
    mkTest "claudeJsonOwnedPaths alone emits claudeCodeClaudeJsonSync"
      (ownedClaudeJsonOnly.home.activation ? claudeCodeClaudeJsonSync);

  module-no-claim-no-settings-sync =
    mkTest "no settings and no owned paths emits no settings sync"
      (!(claimsNothing.home.activation ? claudeCodeSettingsSync));

  module-no-claim-no-claudejson-sync =
    mkTest "no claudeJson and no owned paths emits no .claude.json sync"
      (!(claimsNothing.home.activation ? claudeCodeClaudeJsonSync));

  # === PO6: defining MCP servers both ways is an eval-time error ===
  module-servers-twice-fails =
    mkTest "mcpServers defined twice trips exactly one assertion"
      (builtins.length (failedAssertions serversTwice) == 1);

  module-servers-twice-message-names-conflict =
    mkTest "the conflict assertion message names mcpServers" (
      lib.hasInfix "mcpServers" (builtins.head (failedAssertions serversTwice)).message
    );

  module-servers-via-option-ok =
    mkTest "mcpServers option alone trips no assertion"
      (failedAssertions serversViaOption == [ ]);

  module-servers-via-claudejson-ok =
    mkTest "claudeJson.mcpServers alone trips no assertion"
      (failedAssertions serversViaClaudeJson == [ ]);
}
