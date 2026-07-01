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

  latest = {
    version = "2.1.198";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ab6f7ee109816ede414f7c285446633f805b623aa609f425609a64266451d61e";
      };
      "x86_64-linux" = {
        sha256 = "7066af42a5fe93038c13af5072d4c034dc3928092cb121fdd892c76b94b6b84d";
      };
      "aarch64-linux" = {
        sha256 = "99b50a6f2b1f3ef07bcaf1e58a2f9883c470c84e428afa321972b1aa20372e9a";
      };
    };
  };

}
