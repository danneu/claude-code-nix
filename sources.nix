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
    version = "2.1.221";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7a181f36ed0fc4fbac6cee4ecf2b615eff93d8b434221fff5d7c878dc5ebf380";
      };
      "x86_64-linux" = {
        sha256 = "60db8e88d42c24b5199c92cfd56ec88370c510c3789c6f364af748354f087ada";
      };
      "aarch64-linux" = {
        sha256 = "d3c59d6bcc4adcf4cd85abca3bc13fa1131a34cb32f982bdf030d83a3b11e700";
      };
    };
  };

}
