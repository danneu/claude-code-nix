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
    version = "2.1.277";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "73d6a2a55c46907e49bd8bb7608e134333bd71173351ee16ddce7d7db9914b9c";
      };
      "x86_64-linux" = {
        sha256 = "722210f05ba494d8f6df69423c4d4f2960900f7a007d0532851c7a36e375cab7";
      };
      "aarch64-linux" = {
        sha256 = "242c4d743beabc822edd8f247101bb800b4036c69e74b9e2a1adb120dfe46f5d";
      };
    };
  };

  latest = {
    version = "2.1.284";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "50a14c2f50f56668380fdda490167f1d3630d5cc18fb8aed3073c2c7ea7314fe";
      };
      "x86_64-linux" = {
        sha256 = "5cd90aabd83f8a15136c35aa37bb1d92b348993573316643dc3fe4e04afbf88f";
      };
      "aarch64-linux" = {
        sha256 = "3dd0f96d7ada463152d20300186f6cfc6ab94b57e218f49e3ac86db42ac695a6";
      };
    };
  };

}
