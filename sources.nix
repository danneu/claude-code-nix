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
    version = "2.1.293";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4e21122a227857da1178aca3299700c1fd7f2b77c93f12e73c2c76db796a105e";
      };
      "x86_64-linux" = {
        sha256 = "8968405e26db478af44eabc4635ab5ca557057b702a54460a59c13e1b253e978";
      };
      "aarch64-linux" = {
        sha256 = "a43629e888f0a7d96c5e8de62abf44852433a7ff2481574688db3e5b6399491f";
      };
    };
  };

}
