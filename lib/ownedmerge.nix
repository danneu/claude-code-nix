# Owned-path jq functions: per-path nix ownership on top of smartmerge.
#
# Requires smartmerge to be defined (see lib/smartmerge.nix); compose the two
# via lib/mergeexpr.nix rather than importing this alone.
#
# A path is a dot-separated key path ("autoMode", "env.FOO"). Keys containing
# literal dots cannot be addressed.
#
# ownedmerge(file; nix; owned)
#   1. Deep merge with nix winning (smartmerge).
#   2. For each owned path, nix's value replaces the file's subtree wholesale;
#      if nix defines nothing there, the path is removed. An explicit null
#      counts as defining nothing.
#
# Examples:
#   ownedmerge({"a":{"x":1,"y":2}}; {"a":{"x":9}}; ["a"]) -> {"a":{"x":9}}
#   ownedmerge({"a":1,"b":2}; {}; ["a"])                  -> {"b":2}
#   ownedmerge({"a":1}; {}; [])                           -> {"a":1}
#   ownedmerge({"a":1}; {"a":null}; ["a"])                -> {}
#
# ownedremovals(file; nix; owned)
#   Streams {path, old} for each owned path the merge will delete, so
#   activation can report what it is about to drop.
#
''
  def ownedmerge($file; $nix; $owned):
    reduce ($owned[] | split(".")) as $path (
      # smartmerge treats an empty object as "replace with empty", which is what
      # you want at a key (`env = {}` clears env) but never at the root: an empty
      # nix document means nix sets nothing, not erase the file. Owned paths make
      # an empty document reachable, so the root case is handled explicitly.
      (if ($nix | length) == 0 then $file else smartmerge($file; $nix) end);
      if (try ($nix | getpath($path)) catch null) == null then
        delpaths([$path])
      else
        setpath($path; $nix | getpath($path))
      end
    );

  def ownedremovals($file; $nix; $owned):
    $owned[] as $p |
    ($p | split(".")) as $path |
    (try ($nix | getpath($path)) catch null) as $nixval |
    (try ($file | getpath($path)) catch null) as $fileval |
    select($nixval == null and $fileval != null) |
    {path: $p, old: $fileval};
''
