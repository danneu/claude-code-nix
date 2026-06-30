# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.185";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a280c23b210525218f5bd86f001c9dbc89b9e07410175c5a9355044bfadc0af1";
      };
      "x86_64-linux" = {
        sha256 = "e1246338699f04ee0e627dee3f6d4ed7a0bab48e0514bde69c6dad43bc303952";
      };
      "aarch64-linux" = {
        sha256 = "db880812272504455df73160d92fadf9370eda684c219cebf8e62b0a262cb2f8";
      };
    };
  };

  latest = {
    version = "2.1.196";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6fc6e61ab7582c2bf241225ff90d9f79e91d69380cb9589fc9dedd3a30070f5a";
      };
      "x86_64-linux" = {
        sha256 = "eb933c6dd5534db89b83ba09009d5c0932bd1395f7e3bb0f34ba37eec37bbade";
      };
      "aarch64-linux" = {
        sha256 = "05aa9189d335d1e921ca9608acd699193e661559aff56704456ce5bda6fd4dd8";
      };
    };
  };

}
