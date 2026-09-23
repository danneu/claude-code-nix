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

  latest = {
    version = "2.1.281";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a922981f6f3b55a251ef9f9dbaa0621a5f99cbcb5ca67f8a797476ccfc83f626";
      };
      "x86_64-linux" = {
        sha256 = "56fe3da88458465fb27d7e9299dddb3fead55750fb9c2de795f233b5eea6dce1";
      };
      "aarch64-linux" = {
        sha256 = "dd27b36438a4fed1670cd29bad2fda6a73b628b6da55443e5c2f647fe6ed328f";
      };
    };
  };

}
