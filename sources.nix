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
    version = "2.1.181";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c4d833b04606cef9b6eab3ad255ed2e1448f87dea2bc00ff5acf77b57df6e94d";
      };
      "x86_64-linux" = {
        sha256 = "35ffd4e9d9a86395d0ba4e05f8b23bf098bfeab95e97deacd6537909d1324e9c";
      };
      "aarch64-linux" = {
        sha256 = "1393f993533e08d5c96245504750a7fcfe37490a5f44eec35b0beac3d709dab9";
      };
    };
  };

  latest = {
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

}
