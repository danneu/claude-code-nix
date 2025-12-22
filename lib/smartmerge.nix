# Smart merge jq function that handles empty objects correctly.
#
# Unlike jq's `*` operator (which is a no-op when merging with {}),
# this function replaces when the override is an empty object.
#
# Usage in jq:
#   smartmerge(base; over)
#
# Examples:
#   smartmerge({"a":1}; {"a":2})      -> {"a":2}       (over wins)
#   smartmerge({"a":1}; {"b":2})      -> {"a":1,"b":2} (merged)
#   smartmerge({"a":{"x":1}}; {"a":{}}) -> {"a":{}}    (empty replaces!)
#
''
  def smartmerge($base; $over):
    if ($over | type) != "object" then $over
    elif ($over | length) == 0 then $over
    elif ($base | type) != "object" then $over
    else
      reduce ([$base, $over] | add | keys | unique)[] as $k (
        {};
        if ($over | has($k) | not) then . + {($k): $base[$k]}
        elif ($base | has($k) | not) then . + {($k): $over[$k]}
        else . + {($k): smartmerge($base[$k]; $over[$k])}
        end
      )
    end;
''
