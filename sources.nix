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
    version = "2.1.292";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "97a01e5bc74a199e67189435d0331ea3a24eac2e07db4b76d9148c5b0386138f";
      };
      "x86_64-linux" = {
        sha256 = "a967e7b1d8b4e47ee421d5433027880347952b0c0857abf880e2c942a4ec93b3";
      };
      "aarch64-linux" = {
        sha256 = "24caa9e6ff13bf227049a2626f1c816fc895023050f0ec3b12dbf14d897367e0";
      };
    };
  };

}
