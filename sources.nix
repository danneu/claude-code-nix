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
    version = "2.1.288";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bbe93063f7a0879a1021b2891e5c9354e5b3b98433e32efe6750f7710afed750";
      };
      "x86_64-linux" = {
        sha256 = "0298068b686e7fdbaf9402a7a587bb7f49c0b0e084de09f69145a0719207640c";
      };
      "aarch64-linux" = {
        sha256 = "359ab6a058fcde9741dff54979a212fd134cdf8e8cfc2f8de02bc350b9e2b9d5";
      };
    };
  };

}
