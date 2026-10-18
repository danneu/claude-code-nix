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

  latest = {
    version = "2.1.303";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d2da3b003dc08b88b7230469014fe3e1dc6fe94bc8f648e89b34175d30269370";
      };
      "x86_64-linux" = {
        sha256 = "375988f457756524234695cf2d8f64ace99c5f68682e47ea24862a843c191450";
      };
      "aarch64-linux" = {
        sha256 = "f384f49826336d4ac0484ac6ac9d8d16f64d244d186ce227cbd7cc088c03315d";
      };
    };
  };

}
