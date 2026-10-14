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
    version = "2.1.300";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "475517caa611e3318a2f298fa071287ec98955538df78c58f709ecc01e5ae2d3";
      };
      "x86_64-linux" = {
        sha256 = "674deba0bba9aee479f4503c438b49303b6fdd304b9a471b14977aaec5215453";
      };
      "aarch64-linux" = {
        sha256 = "ae2295ae2da156936bf5831ab01971ce924d0c9a0af174e28d96fffa8d5fa0a6";
      };
    };
  };

}
