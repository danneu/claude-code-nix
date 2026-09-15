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
    version = "2.1.273";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "953e9880dbcb0b70f31c1f508de6a3fd389753d131688557fd992da9184693fb";
      };
      "x86_64-linux" = {
        sha256 = "6c752e2cc7c110c9df15f26d8d134d438c5ae95dbd610efc1a308bf7f9c5f6c1";
      };
      "aarch64-linux" = {
        sha256 = "103cfab4d6ae898b6af692336fb662ffcc607075cc6408892bd350b3f549ebee";
      };
    };
  };

}
