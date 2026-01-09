# Strict merge jq function that only keeps keys present in the override.
#
# Unlike smartmerge which preserves base-only keys, this function
# removes any keys not present in the override (nix config).
# Use this when nix should be the source of truth.
#
# Usage in jq:
#   strictmerge(base; over)
#
# Examples:
#   strictmerge({"a":1,"b":2}; {"a":10})      -> {"a":10}     (b removed!)
#   strictmerge({"a":1}; {"a":10,"b":2})      -> {"a":10,"b":2}
#   strictmerge({"a":{"x":1,"y":2}}; {"a":{"x":10}}) -> {"a":{"x":10}} (y removed)
#   strictmerge({"a":1}; {})                  -> {}           (all removed)
#
''
  def strictmerge($base; $over):
    if ($over | type) != "object" then $over
    elif ($base | type) != "object" then $over
    else
      reduce ($over | keys)[] as $k (
        {};
        if ($base | has($k)) then
          . + {($k): strictmerge($base[$k]; $over[$k])}
        else
          . + {($k): $over[$k]}
        end
      )
    end;
''
