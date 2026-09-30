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
    version = "2.1.286";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "75e3016e9d2570767b08e43a7467d4817a4f149232c169ca295f2c95fef21433";
      };
      "x86_64-linux" = {
        sha256 = "fe503f65c6289d59c23e5b21ae44f03583f997dd33a2cbfc75ab4f96fb8fc73f";
      };
      "aarch64-linux" = {
        sha256 = "0292fa22ac2fd43e16be9d0e511ddd8347280d6e0ebaca744ef5b27e05d8d0f8";
      };
    };
  };

}
