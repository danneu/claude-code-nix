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
    version = "2.1.205";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "33e28624c5ae84f2bd7d2d8761e5d2e77997ba965cb11b6448de6b6e2c566f9c";
      };
      "x86_64-linux" = {
        sha256 = "dd8734c0b6a503fe1d17425184e57b397c30bb0337a33f1470d9985febfe5b09";
      };
      "aarch64-linux" = {
        sha256 = "c1874c85bcd3a88b70439fd50ff5910b7e6ac5371c14dd49d4ccc2878a592d09";
      };
    };
  };

}
