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
    version = "2.1.205";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "33e28624c5ae84f2bd7d2d8761e5d2e77997ba965cb11b6448de6b6e2c566f9c";
      };
      "x86_64-linux" = {
        sha256 = "dd8734c0b6a503fe1d17425184e57b397c30bb0337a33f1470d9985febfe5b09";
      };
      "aarch64-linux" = {
        sha256 = "c1874c85bcd3a88b70439fd50ff5910b7e6ac5371c14dd49d4ccc2878a592d09";
      };
    };
  };

  latest = {
    version = "2.1.214";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "59796dd18e9d77f1256f367db6d28ce4bd9cd5968e402ad3a327aac36abc6dec";
      };
      "x86_64-linux" = {
        sha256 = "3c029136f7c81f54ed4a38e9d52e655aad536433dbbde50519c8c31bb646ad14";
      };
      "aarch64-linux" = {
        sha256 = "4c38f26a57a42619ee813f15dc39fc1fa4fe0bb403215c3cdc342b58fa689c3c";
      };
    };
  };

}
