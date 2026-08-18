# Composed per-file jq expressions used by the module's activation steps.
#
# Both expressions are written for `jq -s '<expr>' <nix.json> <target.json>`,
# so `.[0]` is the nix document and `.[1]` is the live file.
#
# Tests exercise these composed expressions rather than the private helpers in
# lib/smartmerge.nix and lib/ownedmerge.nix, so coverage tracks what activation
# actually runs.
let
  smartMergeScript = import ./smartmerge.nix;
  ownedMergeScript = import ./ownedmerge.nix;

  prelude = smartMergeScript + ownedMergeScript;

  ownedJson = ownedPaths: builtins.toJSON ownedPaths;
in
{
  # Merge the nix document into the file, then apply per-path ownership.
  merge = ownedPaths: ''
    ${prelude}
    ownedmerge(.[1]; .[0]; ${ownedJson ownedPaths})
  '';

  # Stream {path, old} for each owned path this merge will delete.
  removals = ownedPaths: ''
    ${prelude}
    ownedremovals(.[1]; .[0]; ${ownedJson ownedPaths})
  '';
}
