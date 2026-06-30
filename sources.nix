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
    version = "2.1.197";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8cc0c4d1e4eb1dca3b0cc92ab02ee3505de764e023f8c901761c167b72041fb8";
      };
      "x86_64-linux" = {
        sha256 = "f54e69cbc89b2da61a415700af7ff52a147e862517d4f1b0eecf768448cf7f83";
      };
      "aarch64-linux" = {
        sha256 = "fb48473c467c27615ac799a754f4ef0b68c363e4596cefbb59c3815d51a0cc8a";
      };
    };
  };

}
