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
    version = "2.1.215";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "90608b5c5ab504e96e77365cea6203d046e291d59b2bb42cf28dcb2ccdf9dd58";
      };
      "x86_64-linux" = {
        sha256 = "c1efffaaf370aa187cb6a09dd93d4e511c646899b0078476f83791b664bde7fe";
      };
      "aarch64-linux" = {
        sha256 = "2b43a3d5b0787217e5d7381fad42c7314292546fe9db9eb8b9b379de90509b30";
      };
    };
  };

}
