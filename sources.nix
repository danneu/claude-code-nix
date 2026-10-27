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
    version = "2.1.312";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6b5ec691195e551b02c41df9f7d723f4ea61eaa03c2df90acefe3736f1aeb620";
      };
      "x86_64-linux" = {
        sha256 = "4f4178ce41d83e23341ebfbaecdbcf8ea6bf7baea0690025abe49eeec3a5d01d";
      };
      "aarch64-linux" = {
        sha256 = "dc4af28917455e009d26704b82a438353a06149e825b6cdf782908b2d28661f5";
      };
    };
  };

}
