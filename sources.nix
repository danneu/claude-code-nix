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
    version = "2.1.195";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8b45adad93f336ab95f33e714494b19fd3377a494eb05c122c8677bc895876ad";
      };
      "x86_64-linux" = {
        sha256 = "8323e70125063147a4478b957745d835a87e5e72ffd25b838ea9a841c03e6a37";
      };
      "aarch64-linux" = {
        sha256 = "b02279999058dc80a0e1c5d39463d1545a178615492f84139aac8d61214a7e9a";
      };
    };
  };

  latest = {
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

}
