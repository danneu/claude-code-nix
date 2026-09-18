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
    version = "2.1.276";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9de364db11a410d53cbbb0f6b1f18c66c90053efc9a63370072856d10db66329";
      };
      "x86_64-linux" = {
        sha256 = "8a56c8a14bd3cb246e2bdb7e60aefe0f609bff78c8bbcc5ea6b1817c111c6145";
      };
      "aarch64-linux" = {
        sha256 = "e9ac3df956083645578a382ad64ec304468666e362c33bfdefd803cd6ff596b0";
      };
    };
  };

}
