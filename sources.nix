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
    version = "2.1.280";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "387a5c5dcdbb815085edf0baf79591f9d8894efe922bceaf3d75b1b08055229d";
      };
      "x86_64-linux" = {
        sha256 = "1e08503dbdf3c2cb0d706d32f3408277388d1c76ef108673e8fe42c1b322925b";
      };
      "aarch64-linux" = {
        sha256 = "92f2b4fd05d0bdcf7b9a0d4e0ecef4a1e4b368b290cd8fd07cff9a50013f45a2";
      };
    };
  };

  latest = {
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

}
