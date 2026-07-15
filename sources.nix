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
    version = "2.1.202";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7414f707861e2fe5afef33a466f888a8d2170e5028f5e9d2858f1d3ef45ffca5";
      };
      "x86_64-linux" = {
        sha256 = "71590202249892db3805ecd5b867f831f04b8129eaabd3f9a5bd4ba16b52c839";
      };
      "aarch64-linux" = {
        sha256 = "de5e0bb28e2b32409444ed4c1431e2931001c05ed270a3dc96c6706b0693867f";
      };
    };
  };

  latest = {
    version = "2.1.210";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1b471d62d1117482689d75447f5e050c640da717a5a3c91e6c13792450f8c662";
      };
      "x86_64-linux" = {
        sha256 = "e7d2ceb53ed4c2ced1fe7fc1c6331c98dc5f7b4c9b2722d9c5fa3dd5dff6f719";
      };
      "aarch64-linux" = {
        sha256 = "84feb193c1d91f3b5eba836ed47c0e4dee953195abba950917c3e101eff174e8";
      };
    };
  };

}
