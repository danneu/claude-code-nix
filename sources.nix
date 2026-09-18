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
    version = "2.1.267";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a681f3008f0050029aeebcab3af51bb6a55ddeb625a3af3141a4416d43cd2558";
      };
      "x86_64-linux" = {
        sha256 = "0399c793ff571d5946ef923d80b4f330d05ac4b6842a6b0775468f5d389403c0";
      };
      "aarch64-linux" = {
        sha256 = "226a4e009574044a18bf5495f127806b2a1bfcbf25b3c01608705fafee95fefb";
      };
    };
  };

  latest = {
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

}
