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
    version = "2.1.176";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f3f1b0c098510bd5d472b15f5541bb261f5939aeb52e488760bc53fb54c1803d";
      };
      "x86_64-linux" = {
        sha256 = "075bc326c19a5484c86f3ea8633cf4bf7e26ed72bf3529bc8b64a00db1c488cc";
      };
      "aarch64-linux" = {
        sha256 = "95924cc57a03d9b3b58b262aef7f6c8719653c991c82b6b8690c7a5422690d63";
      };
    };
  };

  latest = {
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

}
