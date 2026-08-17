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
    version = "2.1.226";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "013a1cf17df5ff1dcc189d5d6fd3fdd5f097ddc3cd41aa9992e99805574febbe";
      };
      "x86_64-linux" = {
        sha256 = "4e9bec1177ce9690e8bd988b710ac24105e70da428dd094c5adcbbe786a55555";
      };
      "aarch64-linux" = {
        sha256 = "feb715ee066d02a400c9d83941592f11c8e8fa6628c1e3c14262bc529f950498";
      };
    };
  };

  latest = {
    version = "2.1.234";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "08d8700313697cbe730a25420c908a299ce52d56f0eb2cf4fac94cab5109bc57";
      };
      "x86_64-linux" = {
        sha256 = "3473601ea695d5bf769c5b202844d4cb4fbf723ae995450fcb6973204775c84a";
      };
      "aarch64-linux" = {
        sha256 = "24adda673591cd8345b03ec8245915bb151a259a1ebc3ef23649b57ba944aaa2";
      };
    };
  };

}
