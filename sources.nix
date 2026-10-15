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
    version = "2.1.301";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1f04c69e1c24e4d0a716a863af0aad8fc64d49a499334c29701f073700276b99";
      };
      "x86_64-linux" = {
        sha256 = "bc1aad9982c7b59c7d889ff92595d61cf46e0a6eae074cb551d932a989bcd222";
      };
      "aarch64-linux" = {
        sha256 = "1e119036a802d359ba5f9886428e031586e8796f7a858d5a8ee179ac7b8604f0";
      };
    };
  };

}
