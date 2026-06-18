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
    version = "2.1.170";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e903646d8b7a31882a80ecd27569a27d8ac57b3708745f349709632c84117fdf";
      };
      "x86_64-linux" = {
        sha256 = "849e007277a0442ab27570d3e3d6d43787507946590e8dd1947e5a39b7081f9e";
      };
      "aarch64-linux" = {
        sha256 = "1bb9d032440a75532f7dd4cafbc687f220aaf16c63eba17e192dfbec2f04bd25";
      };
    };
  };

  latest = {
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

}
