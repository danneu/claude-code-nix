# Tests for the smartmerge and strictmerge jq functions
#
# Run with: nix flake check
# Verbose:  nix flake check -L
#
{ pkgs }:

let
  smartMergeScript = import ../lib/smartmerge.nix;
  strictMergeScript = import ../lib/strictmerge.nix;

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
}
