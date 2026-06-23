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
    version = "2.1.178";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "473495d0c15d6616cd0870480db5eb8aa0402fe4f8ead3277a1b521e94110309";
      };
      "x86_64-linux" = {
        sha256 = "17ed1a983a49404c4673de286419a8fd6617c92440a2e0f789bcc413a3b14de1";
      };
      "aarch64-linux" = {
        sha256 = "8e57484f5c08093117cfe6225529f8977877eea04bb3463f4e228aa7438349b3";
      };
    };
  };

  latest = {
    version = "2.1.187";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a59a16ba4922adab7a145728f215d042184d349f5f7e72cddb7fc114250a4ce3";
      };
      "x86_64-linux" = {
        sha256 = "bb02fcb33626f8c599d10d8bee38585d4cf8d4225c3b497869dee7454e7bf361";
      };
      "aarch64-linux" = {
        sha256 = "b49be8a5e565bf2d45b50d2de62017b25462131acc9425d2fdb98b8f29c9dce2";
      };
    };
  };

}
