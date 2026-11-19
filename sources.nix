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
    version = "2.1.311";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "85d8c08707fcfd1e78ffa0204eefbc6ec9e4fe22f375fb2767ef85d957ed3161";
      };
      "x86_64-linux" = {
        sha256 = "86dc1fcc69498159eaf15f446613e847010f9036bfbbdffd4c49350be8489ada";
      };
      "aarch64-linux" = {
        sha256 = "2e2496c9a8065df93acb0fca2d341f59a6b8777649b2e025ab8c9bcd5eef61f3";
      };
    };
  };

  latest = {
    version = "2.1.328";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e85547190ef8cd983033ba61b17194045a6fea00035da349efeabed86badacc9";
      };
      "x86_64-linux" = {
        sha256 = "a982d38030b97e750848add2cbb2df6d9a70d5544a22ca9b216a349ba25865e8";
      };
      "aarch64-linux" = {
        sha256 = "307f8bada27b37db7553fac75e86004e3dbff5a931ffc611b54fe710ce1eb521";
      };
    };
  };

}
