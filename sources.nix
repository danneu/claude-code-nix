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
    version = "2.1.209";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "59d2de7f49db2f75d5c33bbb46a6b8f288ad24d40b61e30602a502bb7ddc380c";
      };
      "x86_64-linux" = {
        sha256 = "b882f4b8b27772f897540df50f24000206f43a9426e8f7d19bd065959b69e9dd";
      };
      "aarch64-linux" = {
        sha256 = "278cb68ef7217cfcc5c949d2573bb8e59a8b1305f76689fba88eb722b0d9e2f0";
      };
    };
  };

}
