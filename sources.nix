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
    version = "2.1.308";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ca923c86ac84b30574a82331a05b6e066c27477a926ceaffe46a845a33e4dd37";
      };
      "x86_64-linux" = {
        sha256 = "356733f185fa988e6bf3aa9a555269fdd167982a2e2a80d3c8a78037bb92ad58";
      };
      "aarch64-linux" = {
        sha256 = "fdd22e6cbb734d580f5664c48df4294eeec850218ff07f186f9af30426396ee1";
      };
    };
  };

  latest = {
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

}
