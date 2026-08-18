# Tests for the composed merge expressions and the deepdiff jq function
#
# Run with: nix flake check
# Verbose:  nix flake check -L
#
{ pkgs }:

let
  smartMergeScript = import ../lib/smartmerge.nix;
  deepDiffScript = import ../lib/deepdiff.nix;

  # The composed per-file invocations the module's activation steps run, not
  # the private helpers underneath them. These are full jq argv fragments:
  # the program and the owned-path list arrive already shell-escaped.
  mergeExpr = import ../lib/mergeexpr.nix { lib = pkgs.lib; };

  # Run a composed merge the way activation does: `jq -s <args> <nix> <file>`.
  runOwnedMerge =
    { nix, file, owned }:
    pkgs.runCommand "owned-merge-result" { buildInputs = [ pkgs.jq ]; } ''
      printf '%s' ${pkgs.lib.escapeShellArg nix} > nix.json
      printf '%s' ${pkgs.lib.escapeShellArg file} > file.json
      jq -c -s ${mergeExpr.merge owned} nix.json file.json > $out
    '';

  runOwnedRemovals =
    { nix, file, owned }:
    pkgs.runCommand "owned-removals-result" { buildInputs = [ pkgs.jq ]; } ''
      printf '%s' ${pkgs.lib.escapeShellArg nix} > nix.json
      printf '%s' ${pkgs.lib.escapeShellArg file} > file.json
      jq -c -s ${mergeExpr.removals owned} nix.json file.json > $out
    '';

  # The rendered activation log line, label included.
  runRemovalsReport =
    { nix, file, owned }:
    pkgs.runCommand "owned-removals-report" { buildInputs = [ pkgs.jq ]; } ''
      printf '%s' ${pkgs.lib.escapeShellArg nix} > nix.json
      printf '%s' ${pkgs.lib.escapeShellArg file} > file.json
      jq -r -s --arg label settings.json ${mergeExpr.removalsReport owned} \
        nix.json file.json > $out
    '';

  # nix string literals have no \u escape, so get a real ESC byte via JSON.
  esc = builtins.fromJSON ''"\u001b"'';

  mkReportTest =
    name:
    {
      nix,
      file,
      owned,
      expected,
    }:
    pkgs.testers.testEqualContents {
      assertion = "removals report: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runRemovalsReport { inherit nix file owned; };
    };

  mkOwnedTest =
    name:
    {
      nix,
      file,
      owned,
      expected,
    }:
    pkgs.testers.testEqualContents {
      assertion = "ownedmerge: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runOwnedMerge { inherit nix file owned; };
    };

  mkRemovalsTest =
    name:
    {
      nix,
      file,
      owned,
      expected,
    }:
    pkgs.testers.testEqualContents {
      assertion = "ownedremovals: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runOwnedRemovals { inherit nix file owned; };
    };

  # Run smartmerge and return result as a file (compact output for consistent comparison)
  runSmartMerge = base: over:
    pkgs.runCommand "merge-result" { buildInputs = [ pkgs.jq ]; } ''
      jq -cn '${smartMergeScript} smartmerge(${base}; ${over})' > $out
    '';

  # Create a test using testers.testEqualContents (shows diff on failure)
  mkSmartTest = name: { base, over, expected }:
    pkgs.testers.testEqualContents {
      assertion = "smartmerge: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runSmartMerge base over;
    };

  # Run deepdiff($existing; $nix; "") with inline JSON literals (like runSmartMerge)
  runDeepDiff = existing: nix:
    pkgs.runCommand "deepdiff-result" { buildInputs = [ pkgs.jq ]; } ''
      jq -cn '${deepDiffScript} deepdiff(${existing}; ${nix}; "")' > $out
    '';

  mkDeepDiffTest = name: { existing, nix, expected }:
    pkgs.testers.testEqualContents {
      assertion = "deepdiff: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runDeepDiff existing nix;
    };
in
{
  # === smartmerge tests ===
  smartmerge-empty-replaces = mkSmartTest "empty object replaces non-empty" {
    base = ''{"env":{"X":"1"}}'';
    over = ''{"env":{}}'';
    expected = ''{"env":{}}
'';
  };

  smartmerge-deep-merge = mkSmartTest "non-empty objects deep merge" {
    base = ''{"env":{"X":"1"}}'';
    over = ''{"env":{"Y":"2"}}'';
    expected = ''{"env":{"X":"1","Y":"2"}}
'';
  };

  smartmerge-siblings-preserved = mkSmartTest "sibling keys preserved" {
    base = ''{"a":1,"b":2}'';
    over = ''{"b":3}'';
    expected = ''{"a":1,"b":3}
'';
  };

  smartmerge-nested-empty = mkSmartTest "nested empty replaces" {
    base = ''{"a":{"b":{"c":1}}}'';
    over = ''{"a":{"b":{}}}'';
    expected = ''{"a":{"b":{}}}
'';
  };

  smartmerge-scalar-wins = mkSmartTest "override wins for scalars" {
    base = ''{"x":1}'';
    over = ''{"x":2}'';
    expected = ''{"x":2}
'';
  };

  smartmerge-key-only-in-base = mkSmartTest "keys only in base preserved" {
    base = ''{"a":1,"b":2}'';
    over = ''{"a":10}'';
    expected = ''{"a":10,"b":2}
'';
  };

  smartmerge-key-only-in-over = mkSmartTest "keys only in over added" {
    base = ''{"a":1}'';
    over = ''{"b":2}'';
    expected = ''{"a":1,"b":2}
'';
  };

  # Real-world claudeJson scenario: nix specifies one key deep in a large nested obj.
  # The existing file has many keys in cachedGrowthBookFeatures; nix only wants to
  # override tengu_copper_bridge. All other nested keys must be preserved.
  smartmerge-claudejson-partial-nested-override = mkSmartTest "claudeJson: partial nested obj preserves sibling keys (nix-wins)" {
    base = ''{"cachedGrowthBookFeatures":{"strawberry_granite_flag":"N/A","tengu_accept_with_feedback":true,"tengu_copper_bridge":true},"installMethod":"native","mcpServers":{}}'';
    over = ''{"cachedGrowthBookFeatures":{"tengu_copper_bridge":false}}'';
    expected = ''{"cachedGrowthBookFeatures":{"strawberry_granite_flag":"N/A","tengu_accept_with_feedback":true,"tengu_copper_bridge":false},"installMethod":"native","mcpServers":{}}
'';
  };

  # === owned-path tests (composed merge expression) ===

  # PO1: a realistic settings.json -- app-managed keys nix never sets must
  # survive alongside an owned autoMode subtree that nix replaces wholesale.
  owned-app-keys-survive = mkOwnedTest "app-managed keys survive an owned autoMode" {
    file = ''{"autoMode":{"allow":["$defaults","StaleRule"],"soft_deny":["$defaults"]},"autoCompactEnabled":true,"env":{"CLAUDE_CODE_NO_FLICKER":"1"},"permissions":{"defaultMode":"auto"},"tui":{"diffMode":"inline"},"voiceEnabled":false}'';
    nix = ''{"autoMode":{"allow":["$defaults"],"soft_deny":["$defaults"]},"permissions":{"defaultMode":"auto"}}'';
    owned = [ "autoMode" ];
    expected = ''{"autoCompactEnabled":true,"autoMode":{"allow":["$defaults"],"soft_deny":["$defaults"]},"env":{"CLAUDE_CODE_NO_FLICKER":"1"},"permissions":{"defaultMode":"auto"},"tui":{"diffMode":"inline"},"voiceEnabled":false}
'';
  };

  # PO1: file-only keys nested below an unowned path survive too.
  owned-nested-file-keys-survive = mkOwnedTest "file-only keys under an unowned path survive" {
    file = ''{"env":{"A":"1","B":"2"},"x":1}'';
    nix = ''{"env":{"A":"9"}}'';
    owned = [ ];
    expected = ''{"env":{"A":"9","B":"2"},"x":1}
'';
  };

  # PO2: at an owned path nix replaces the subtree wholesale -- a stale array
  # entry and a stale sibling key both go, which plain deep merge would keep.
  owned-replaces-wholesale = mkOwnedTest "owned path replaces subtree wholesale" {
    file = ''{"autoMode":{"allow":["$defaults","StaleRule"],"soft_deny":["$defaults"],"legacyKey":true}}'';
    nix = ''{"autoMode":{"allow":["$defaults"]}}'';
    owned = [ "autoMode" ];
    expected = ''{"autoMode":{"allow":["$defaults"]}}
'';
  };

  # PO2: nix defines nothing at the owned path and the nix document is empty.
  owned-deleted-when-nix-doc-empty = mkOwnedTest "owned path deleted when nix doc is entirely empty" {
    file = ''{"autoMode":{"allow":["x"]},"tui":{"diffMode":"inline"}}'';
    nix = ''{}'';
    owned = [ "autoMode" ];
    expected = ''{"tui":{"diffMode":"inline"}}
'';
  };

  # An empty nix document sets nothing; it must never be read as "erase the
  # file". smartmerge's empty-object-replaces rule applies at a key, not at the
  # root, and owned-path gating is what makes an empty document reachable here.
  owned-empty-nix-doc-is-not-erasure = mkOwnedTest "empty nix doc with no owned paths leaves the file untouched" {
    file = ''{"projects":{"/home/x":{"allowedTools":[]}},"tui":1}'';
    nix = ''{}'';
    owned = [ ];
    expected = ''{"projects":{"/home/x":{"allowedTools":[]}},"tui":1}
'';
  };

  # PO2: an explicit null counts as defining nothing.
  owned-deleted-on-explicit-null = mkOwnedTest "explicit null at owned path deletes it" {
    file = ''{"autoMode":{"allow":["x"]},"tui":1}'';
    nix = ''{"autoMode":null}'';
    owned = [ "autoMode" ];
    expected = ''{"tui":1}
'';
  };

  # PO2: owned path is created when the file lacks it.
  owned-created-when-absent = mkOwnedTest "owned path created when the file lacks it" {
    file = ''{"tui":1}'';
    nix = ''{"autoMode":{"allow":["$defaults"]}}'';
    owned = [ "autoMode" ];
    expected = ''{"autoMode":{"allow":["$defaults"]},"tui":1}
'';
  };

  # PO2: a dotted path owns only that leaf, not its parent.
  owned-nested-dotted-path = mkOwnedTest "dotted owned path deletes the leaf, spares its siblings" {
    file = ''{"env":{"A":"1","B":"2"},"x":1}'';
    nix = ''{"env":{"A":"9"}}'';
    owned = [ "env.B" ];
    expected = ''{"env":{"A":"9"},"x":1}
'';
  };

  owned-nested-dotted-replace = mkOwnedTest "dotted owned path replaces the leaf wholesale" {
    file = ''{"env":{"A":{"keep":1,"stale":2},"B":"2"}}'';
    nix = ''{"env":{"A":{"keep":9}}}'';
    owned = [ "env.A" ];
    expected = ''{"env":{"A":{"keep":9},"B":"2"}}
'';
  };

  # PO4: owning mcpServers must not touch the rest of ~/.claude.json.
  owned-claudejson-preserves-app-state = mkOwnedTest ".claude.json app state survives an owned mcpServers" {
    file = ''{"installMethod":"native","mcpServers":{"stale":{"type":"stdio"}},"oauthAccount":{"emailAddress":"a@b.c"},"projects":{"/home/x":{"allowedTools":[]}}}'';
    nix = ''{"mcpServers":{"playwright":{"type":"stdio","command":"npx","args":["-y"]}}}'';
    owned = [ "mcpServers" ];
    expected = ''{"installMethod":"native","mcpServers":{"playwright":{"type":"stdio","command":"npx","args":["-y"]}},"oauthAccount":{"emailAddress":"a@b.c"},"projects":{"/home/x":{"allowedTools":[]}}}
'';
  };

  # PO4: with no owned paths declared, nothing can be removed at all.
  owned-empty-list-removes-nothing = mkOwnedTest "no owned paths removes nothing" {
    file = ''{"mcpServers":{"stale":{"type":"stdio"}},"projects":{"/home/x":{"allowedTools":[]}}}'';
    nix = ''{"mcpServers":{"playwright":{"type":"stdio"}}}'';
    owned = [ ];
    expected = ''{"mcpServers":{"playwright":{"type":"stdio"},"stale":{"type":"stdio"}},"projects":{"/home/x":{"allowedTools":[]}}}
'';
  };

  # === owned-path removal reporting (PO5) ===

  removals-reports-path-and-old-value = mkRemovalsTest "removal entry carries path and old value" {
    file = ''{"autoMode":{"allow":["x"]},"tui":1}'';
    nix = ''{}'';
    owned = [ "autoMode" ];
    expected = ''{"path":"autoMode","old":{"allow":["x"]}}
'';
  };

  removals-silent-when-nothing-removed = mkRemovalsTest "no removal entry when nix defines the owned path" {
    file = ''{"autoMode":{"allow":["x"]}}'';
    nix = ''{"autoMode":{"allow":["y"]}}'';
    owned = [ "autoMode" ];
    expected = '''';
  };

  removals-reports-nested-path = mkRemovalsTest "removal entry for a dotted path" {
    file = ''{"env":{"A":"1","B":"2"}}'';
    nix = ''{"env":{"A":"9"}}'';
    owned = [ "env.B" ];
    expected = ''{"path":"env.B","old":"2"}
'';
  };

  # An owned path containing a single quote must not break out of the
  # single-quoted jq program in the generated activation script. The path is
  # unreachable by design (dots and quotes are not addressable), but it must
  # fail as "no such path", never as a shell parse error.
  owned-quote-in-path-is-inert = mkOwnedTest "a quote in an owned path cannot break the shell" {
    file = ''{"keep":1}'';
    nix = ''{}'';
    owned = [ "no'such;rm -rf /;path" ];
    expected = ''{"keep":1}
'';
  };

  # PO5: the line activation actually prints for an owned-path deletion.
  removals-report-renders-log-line = mkReportTest "report names the label, path and old value" {
    file = ''{"autoMode":{"allow":["x"]},"tui":1}'';
    nix = ''{}'';
    owned = [ "autoMode" ];
    expected = "${esc}[31m[settings.json] Removing autoMode (owned by nix):${esc}[0m\n  Old: {\"allow\":[\"x\"]}\n";
  };

  # === deepdiff tests ===

  # Nested key change shows leaf path
  deepdiff-nested-key = mkDeepDiffTest "nested key change shows leaf path" {
    existing = ''{"cachedGrowthBookFeatures":{"strawberry_granite_flag":"N/A","tengu_copper_bridge":true}}'';
    nix = ''{"cachedGrowthBookFeatures":{"tengu_copper_bridge":false}}'';
    expected = ''{"path":"cachedGrowthBookFeatures.tengu_copper_bridge","old":true,"new":false}
'';
  };

  # New key at root (old is null)
  deepdiff-new-root-key = mkDeepDiffTest "new key at root has null old" {
    existing = ''{"a":1}'';
    nix = ''{"b":2}'';
    expected = ''{"path":"b","old":null,"new":2}
'';
  };

  # Equal values produce no output
  deepdiff-no-change = mkDeepDiffTest "equal values produce no output" {
    existing = ''{"a":1,"b":2}'';
    nix = ''{"a":1}'';
    expected = '''';
  };

  # Scalar change at root
  deepdiff-scalar-change = mkDeepDiffTest "scalar change at root" {
    existing = ''{"x":1}'';
    nix = ''{"x":2}'';
    expected = ''{"path":"x","old":1,"new":2}
'';
  };
}
// import ./module.nix { inherit pkgs; }
