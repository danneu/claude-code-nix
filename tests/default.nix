# Tests for the smartmerge jq function
#
# Run with: nix flake check
# Verbose:  nix flake check -L
#
{ pkgs }:

let
  smartMergeScript = import ../lib/smartmerge.nix;

  # Run smartmerge and return result as a file (compact output for consistent comparison)
  runMerge = base: over:
    pkgs.runCommand "merge-result" { buildInputs = [ pkgs.jq ]; } ''
      jq -cn '${smartMergeScript} smartmerge(${base}; ${over})' > $out
    '';

  # Create a test using testers.testEqualContents (shows diff on failure)
  mkTest = name: { base, over, expected }:
    pkgs.testers.testEqualContents {
      assertion = "smartmerge: ${name}";
      expected = pkgs.writeText "expected" expected;
      actual = runMerge base over;
    };
in
{
  smartmerge-empty-replaces = mkTest "empty object replaces non-empty" {
    base = ''{"env":{"X":"1"}}'';
    over = ''{"env":{}}'';
    expected = ''{"env":{}}
'';
  };

  smartmerge-deep-merge = mkTest "non-empty objects deep merge" {
    base = ''{"env":{"X":"1"}}'';
    over = ''{"env":{"Y":"2"}}'';
    expected = ''{"env":{"X":"1","Y":"2"}}
'';
  };

  smartmerge-siblings-preserved = mkTest "sibling keys preserved" {
    base = ''{"a":1,"b":2}'';
    over = ''{"b":3}'';
    expected = ''{"a":1,"b":3}
'';
  };

  smartmerge-nested-empty = mkTest "nested empty replaces" {
    base = ''{"a":{"b":{"c":1}}}'';
    over = ''{"a":{"b":{}}}'';
    expected = ''{"a":{"b":{}}}
'';
  };

  smartmerge-scalar-wins = mkTest "override wins for scalars" {
    base = ''{"x":1}'';
    over = ''{"x":2}'';
    expected = ''{"x":2}
'';
  };

  smartmerge-key-only-in-base = mkTest "keys only in base preserved" {
    base = ''{"a":1,"b":2}'';
    over = ''{"a":10}'';
    expected = ''{"a":10,"b":2}
'';
  };

  smartmerge-key-only-in-over = mkTest "keys only in over added" {
    base = ''{"a":1}'';
    over = ''{"b":2}'';
    expected = ''{"a":1,"b":2}
'';
  };
}
