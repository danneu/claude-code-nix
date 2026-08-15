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

  latest = {
    version = "2.1.233";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bc466b6cde63edafc773f471a1fb98787fabb31f52240c8616ce7e1f587b212d";
      };
      "x86_64-linux" = {
        sha256 = "55d281096f57d411ebbdd94dbf5e9ff3accb7c05713e37348c2c11d4b83bf9d9";
      };
      "aarch64-linux" = {
        sha256 = "42df1841f74e9b2ac13f2c1a2a820ef6b9ac5b2efb8646bb25c9a92b8bd69194";
      };
    };
  };

}
