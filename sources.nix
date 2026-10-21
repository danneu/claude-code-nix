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
    version = "2.1.304";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b9ac5374839f14abf3f1f45610637c332b5daee5ce0d1634726cef87aab78e6a";
      };
      "x86_64-linux" = {
        sha256 = "ea0f135784631619a7a409d07322ecec964f9cc4fd377508ed1ba3f141f27912";
      };
      "aarch64-linux" = {
        sha256 = "c487117526509ab6d2ee6013e14f181faf68d6d6afe6bb0d4b2b4a9feca5ecb3";
      };
    };
  };

  latest = {
    version = "2.1.306";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b5d795b7760032d79954b55a9cd1876dcf3a8dc9608fd6bb9f618593f69fd44b";
      };
      "x86_64-linux" = {
        sha256 = "520bc6c1f40af466bd03a278b5ae1af1a2938bc7de5b9e5cb15526da20d71cfe";
      };
      "aarch64-linux" = {
        sha256 = "77d257d5e8b8730ec61d5a4992a8eb65550aaf9589f464988aa1a9684338d801";
      };
    };
  };

}
