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
    version = "2.1.183";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6218efccd06194ea0bc381121bf03040a027a04d991eaed886da02a00449ad0f";
      };
      "x86_64-linux" = {
        sha256 = "df3b409c5b25299df52c5ee81f64811dbdcb2e18c1beefe7f733c326f0a8cdce";
      };
      "aarch64-linux" = {
        sha256 = "260a6e43fe9c6fd8800317581982ff50e4f4401d02ef625faa4df723bb9710b3";
      };
    };
  };

}
