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
    version = "2.1.220";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8addc857f3fe64d5a0368af9ee50321b50afb4a6918ba3ef018ab84f5dbbe081";
      };
      "x86_64-linux" = {
        sha256 = "674f61f20ff306f3100cf9200e4c36c4b70278b5bef2884549819b942a89c863";
      };
      "aarch64-linux" = {
        sha256 = "159e4a51d796f3bf14677577100f7efb845611b1ceaf0c30cbd8d4650d942185";
      };
    };
  };

  latest = {
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

}
