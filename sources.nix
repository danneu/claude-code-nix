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
    version = "2.1.289";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "03d66745e3bb69ec727d66023696f3820bc0a00a8a5ba725eb6706d0c67cbe69";
      };
      "x86_64-linux" = {
        sha256 = "a186b99e4a9c88366cd49df2f7dad56c61fc306ef0140b19ee64b7c42a8d1348";
      };
      "aarch64-linux" = {
        sha256 = "d100d5e41dcbee220c80d3a3099292e4b5a508b57cafd181856efedf29f84f28";
      };
    };
  };

}
