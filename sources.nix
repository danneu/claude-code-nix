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

  latest = {
    version = "2.1.203";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "57b5aec68a35f42036bd2f82836d91c2d2990c2d589fb3465e3ee87142af9a1e";
      };
      "x86_64-linux" = {
        sha256 = "85e4d203c5b43c67a778efd25dcc9ae1d239110c87726df5c6ac0774b576cc6c";
      };
      "aarch64-linux" = {
        sha256 = "59bf43c7fc8c254a2d7a994f26d577a50f17876e4ed180cff6a1cef2f9ebe473";
      };
    };
  };

}
