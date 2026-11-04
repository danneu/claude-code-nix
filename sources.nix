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
    version = "2.1.311";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "85d8c08707fcfd1e78ffa0204eefbc6ec9e4fe22f375fb2767ef85d957ed3161";
      };
      "x86_64-linux" = {
        sha256 = "86dc1fcc69498159eaf15f446613e847010f9036bfbbdffd4c49350be8489ada";
      };
      "aarch64-linux" = {
        sha256 = "2e2496c9a8065df93acb0fca2d341f59a6b8777649b2e025ab8c9bcd5eef61f3";
      };
    };
  };

  latest = {
    version = "2.1.318";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "677a2ea7bf576cedd20e191d973914ed8a41796f53a63b1923381ddc4d5b5e7d";
      };
      "x86_64-linux" = {
        sha256 = "708c77b204db30086ff6f1ed34577bda03e1be74ced80557cbf7b54249ebf0bd";
      };
      "aarch64-linux" = {
        sha256 = "53a0d7e219d7b0804ecba5dbc002745e89f786cc946d2de85a6470d5b2d1fb06";
      };
    };
  };

}
