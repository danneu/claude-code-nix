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
    version = "2.1.204";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1677b67595b6251156d62600dc85d4070ec385b72dd0b07e73742a56030952c3";
      };
      "x86_64-linux" = {
        sha256 = "c8ee1ea69154533c691a68f46abb645196fe7339d26e6fc204cc7f08220139d3";
      };
      "aarch64-linux" = {
        sha256 = "c37256a8c3998b8675e8385f1ae4677d69bdff1e717c389296eec70e02e317ef";
      };
    };
  };

}
