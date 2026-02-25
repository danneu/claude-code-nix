# Deep diff jq function that emits leaf-level changes between two objects.
#
# Usage in jq:
#   deepdiff($existing; $nix; $prefix)
#
# Streams one object per changed leaf:
#   { path: "a.b.c", old: <value>, new: <value> }
#   { path: "a.b.d", old: null, new: <value> }   (new key)
#
# Examples:
#   deepdiff({"a":1}; {"a":2}; "")
#     -> {"path":"a","old":1,"new":2}
#
#   deepdiff({"a":{"x":1,"y":2}}; {"a":{"y":3}}; "")
#     -> {"path":"a.y","old":2,"new":3}
#
#   deepdiff({"a":1}; {"b":2}; "")
#     -> {"path":"b","old":null,"new":2}
#
''
  def deepdiff($existing; $nix; $prefix):
    ($nix | keys[]) as $k |
    ($prefix + $k) as $path |
    if ($existing | has($k) | not) then
      {path: $path, old: null, new: $nix[$k]}
    elif $nix[$k] == $existing[$k] then
      empty
    elif (($nix[$k] | type) == "object") and (($nix[$k] | length) > 0) and (($existing[$k] | type) == "object") then
      deepdiff($existing[$k]; $nix[$k]; $path + ".")
    else
      {path: $path, old: $existing[$k], new: $nix[$k]}
    end;
''
