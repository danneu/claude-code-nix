# Composed per-file jq invocations used by the module's activation steps.
#
# Both programs are written for `jq -s <args> <nix.json> <target.json>`, so
# `.[0]` is the nix document and `.[1]` is the live file. The owned-path list
# arrives as the jq variable `$owned` rather than being baked into the program
# text, and both the program and the list are shell-escaped here, so a path
# containing a quote cannot break out of the generated activation script.
#
# Tests exercise these composed invocations rather than the private helpers in
# lib/smartmerge.nix and lib/ownedmerge.nix, so coverage tracks what activation
# actually runs.
{ lib }:

let
  prelude = (import ./smartmerge.nix) + (import ./ownedmerge.nix);

  mergeProgram = ''
    ${prelude}
    ownedmerge(.[1]; .[0]; $owned)
  '';

  removalsProgram = ''
    ${prelude}
    ownedremovals(.[1]; .[0]; $owned)
  '';

  # Same stream, rendered for the activation log. Needs `--arg label`.
  removalsReportProgram = ''
    ${prelude}
    ownedremovals(.[1]; .[0]; $owned)
    | "\u001b[31m[\($label)] Removing \(.path) (owned by nix):\u001b[0m\n  Old: \(.old | @json)"
  '';

  invocation =
    program: ownedPaths:
    "--argjson owned ${lib.escapeShellArg (builtins.toJSON ownedPaths)} ${lib.escapeShellArg program}";
in
{
  # Merge the nix document into the file, then apply per-path ownership.
  merge = invocation mergeProgram;

  # Stream {path, old} for each owned path this merge will delete.
  removals = invocation removalsProgram;

  # The same removals rendered as activation log lines.
  removalsReport = invocation removalsReportProgram;
}
