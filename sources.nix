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
    version = "2.1.128";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1a56ae4cd171ba7839fc2b03d558022ffaebb5693be532d8f3c344731063e979";
      };
      "x86_64-linux" = {
        sha256 = "770c81373ad42970ef576676da78d6be60413f4ade23abadbf1343ca0809bb3e";
      };
      "aarch64-linux" = {
        sha256 = "e2a31879b7433f658d915e6716249f10b913b467873950e8e7e066ba7c4d96e9";
      };
    };
  };

  latest = {
    version = "2.1.140";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "087ce732fb79658cd3e828cc377291dc56835fc5318cd519123b0880a09149c0";
      };
      "x86_64-linux" = {
        sha256 = "807a5d6ca063f5e03e4b7283934036a3122723b28c28e1a6978e98cf2d43d0b5";
      };
      "aarch64-linux" = {
        sha256 = "0ec6fc062e99aa95a6edbb5308a563262d27a0772b107d01d4fa61110fb44472";
      };
    };
  };

}
