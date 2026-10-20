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
    version = "2.1.305";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ea3ea3c08d2a9634a4651e687fcf900d410c489bce2b00f22bd7352b91ba704f";
      };
      "x86_64-linux" = {
        sha256 = "86cb722ab68348877dba7971e4d0c659919e05e6228c05e006e83da320e656ef";
      };
      "aarch64-linux" = {
        sha256 = "5265a60217e667b75e126e887b49ac0f168ad8bb13c605c3e3df528519876dc0";
      };
    };
  };

}
