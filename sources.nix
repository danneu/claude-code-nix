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
    version = "2.1.285";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "51f09bd1e021d9fa8a1864c179799bd37cb39962a937935c5cf6823398e86db4";
      };
      "x86_64-linux" = {
        sha256 = "33dad1ec615a2e08cc78b494f05c110e49916de2c79d78ec8799ebf46b233d29";
      };
      "aarch64-linux" = {
        sha256 = "24fac77749bed3d91365d6b6915aa4b824e14318ecb6bc17adbc192f01c9173d";
      };
    };
  };

  latest = {
    version = "2.1.291";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9a1d2ed6bb4421e8fc80c892c0413f293be3ee50ae3d7dda1a7622197a056690";
      };
      "x86_64-linux" = {
        sha256 = "078fad28d0297c9a25d306b635b2d8816c6839347520f29eb54ffea5d56142fb";
      };
      "aarch64-linux" = {
        sha256 = "c18473a04cc4f077435d5d9081f09ebea46e699eb2825cea64741c4bccb87647";
      };
    };
  };

}
