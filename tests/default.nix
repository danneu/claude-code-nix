# Tests for the smartmerge and strictmerge jq functions
#
# Run with: nix flake check
# Verbose:  nix flake check -L
#
{ pkgs }:

let
  smartMergeScript = import ../lib/smartmerge.nix;
  strictMergeScript = import ../lib/strictmerge.nix;
  deepDiffScript = import ../lib/deepdiff.nix;

  # Run smartmerge and return result as a file (compact output for consistent comparison)
  runSmartMerge = base: over:
    pkgs.runCommand "merge-result" { buildInputs = [ pkgs.jq ]; } ''
      jq -cn '${smartMergeScript} smartmerge(${base}; ${over})' > $out
    '';

  # Run strictmerge and return result as a file
  runStrictMerge = base: over:
    pkgs.runCommand "merge-result" { buildInputs = [ pkgs.jq ]; } ''
      jq -cn '${strictMergeScript} strictmerge(${base}; ${over})' > $out
    '';

  # Create a test using testers.testEqualContents (shows diff on failure)
  mkSmartTest = name: { base, over, expected }:
    pkgs.testers.testEqualContents {
      assertion = "smartmerge: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runSmartMerge base over;
    };

  mkStrictTest = name: { base, over, expected }:
    pkgs.testers.testEqualContents {
      assertion = "strictmerge: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runStrictMerge base over;
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

  # === strictmerge tests ===
  strictmerge-removes-base-only = mkStrictTest "base-only keys removed" {
    base = ''{"a":1,"b":2,"c":3}'';
    over = ''{"a":10}'';
    expected = ''{"a":10}
'';
  };

  strictmerge-adds-over-only = mkStrictTest "over-only keys added" {
    base = ''{"a":1}'';
    over = ''{"a":10,"b":2}'';
    expected = ''{"a":10,"b":2}
'';
  };

  strictmerge-deep-removes = mkStrictTest "nested base-only keys removed" {
    base = ''{"a":{"x":1,"y":2}}'';
    over = ''{"a":{"x":10}}'';
    expected = ''{"a":{"x":10}}
'';
  };

  strictmerge-empty-clears = mkStrictTest "empty over clears all" {
    base = ''{"a":1,"b":2}'';
    over = ''{}'';
    expected = ''{}
'';
  };

  strictmerge-scalar-wins = mkStrictTest "override wins for scalars" {
    base = ''{"x":1}'';
    over = ''{"x":2}'';
    expected = ''{"x":2}
'';
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
