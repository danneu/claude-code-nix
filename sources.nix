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
    version = "2.1.138";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "759d23ce626193c89bc8b35c5c6ca8a9e33b9c2e504ee143e4cd119988774097";
      };
      "x86_64-linux" = {
        sha256 = "c3c56ffbc12cf16e40c33687c9fe6361ed250c35a9e1718d0c38d49049f5f8c3";
      };
      "aarch64-linux" = {
        sha256 = "693ecca41a62d58fee660884bd982ca5cdeab5b277925fcdfe880cdf02f98671";
      };
    };
  };

  latest = {
    version = "2.1.144";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9886baa4ec4c455f86108464f121732193ee76e5dfceb031005f59f31276a5df";
      };
      "x86_64-linux" = {
        sha256 = "147480774472e5720fd5e83617b3e9299344e7213efa84c326b25bd5a0f20b4e";
      };
      "aarch64-linux" = {
        sha256 = "c8ccccbfce12d684588bd3af366394132f614dcf3c86beb2066f86bde2704513";
      };
    };
  };

}
