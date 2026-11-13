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
    version = "2.1.325";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "84590fefe6338be9087f5814b61f9a54c5f21524163a4c127cb5a808e31009f2";
      };
      "x86_64-linux" = {
        sha256 = "0dc4f4a9a165fc60746d7ae8489712e5fc352f1e7ad4eb22e7141bd0812eb0cf";
      };
      "aarch64-linux" = {
        sha256 = "7b6e484b1989a5a14a4b354709ccc8672518a3ec5b9ccd7981fc6254327fde67";
      };
    };
  };

}
