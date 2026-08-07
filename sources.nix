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
    version = "2.1.224";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "391df9d2ab04e4cf32199335720ac7715a582e91eaecfd4d2198a16f57ea59b3";
      };
      "x86_64-linux" = {
        sha256 = "a2b5add7dc4bcd8eaa029f4e8bdac4df7769b4073698db7989d206baf9419c2d";
      };
      "aarch64-linux" = {
        sha256 = "3e50836e227868746273653e0f8115cf5fc9cb34a081847c6040c81d80812c33";
      };
    };
  };

}
