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
    version = "2.1.302";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5262ce9de86243fed0d21edc39b271555d56780d0112e2b194439fe1c6662d37";
      };
      "x86_64-linux" = {
        sha256 = "60d7eb7f12fbb28a52533fe8be5884097403562aa02dc73991a021c7067e29a5";
      };
      "aarch64-linux" = {
        sha256 = "2bd4f4e5ed5cb09955b490098f745321cb5491e7ea8c752ba1e3bb010cdadb10";
      };
    };
  };

}
