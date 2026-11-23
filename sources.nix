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

  latest = {
    version = "2.1.331";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4874591dc39bff1188921b82cbeb8a44e3a33b0f92c888b3d43639b9344101f7";
      };
      "x86_64-linux" = {
        sha256 = "4c00839cf46beb2b38ec310105f2d538f7f9321fe46c636299b74bcab94626b1";
      };
      "aarch64-linux" = {
        sha256 = "3e5afea76cf6ed53f42076d8b175c4ee3d9ab34cd9b90452da115d21ad0d5d31";
      };
    };
  };

}
