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
    version = "2.1.275";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1b8177fe49f2be5bacc75e89b5f88fa7454791283113ace16a453fe9171d179b";
      };
      "x86_64-linux" = {
        sha256 = "13586f3150a7ca1655f36e1dba759fb404e0f7cf7021d4a3dcd5e6f604e56156";
      };
      "aarch64-linux" = {
        sha256 = "efcefb7448c3d12a045b5c53e0fb4e8859ff99abe90d67f83900c4f0ffd517ed";
      };
    };
  };

}
