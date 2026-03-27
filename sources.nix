# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Channels (both native and npm):
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.77";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6426772419c758e71146725582d67f1dda42687c693c83def9ad3422bb81ebf1";
      };
      "x86_64-linux" = {
        sha256 = "34559c9cc9eeadc942d6731367aed3915b6b7351d98c61ebfebbd8fa59508ecd";
      };
      "aarch64-linux" = {
        sha256 = "f4303a1a3455b0ebbdd356c1337ae3076affc122fb79a78a2d1886e5c62f289c";
      };
    };
  };

  latest = {
    version = "2.1.85";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bad5882c5fcd97e39f8c2f2b9a4c3fa3890d1a39eecaa94a16fd75d6701ad7b3";
      };
      "x86_64-linux" = {
        sha256 = "ff0b23dba11c97a53386c61ebe47d46d768a8ad33f98c7d22186c9a63f179f4d";
      };
      "aarch64-linux" = {
        sha256 = "b23709a394d1e3d977f9f3025bdaa1b1285715d10a48957e587952d8ef3a27f4";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.77";
      sha256 = "1c0l1zk04gyc2dhinsc41m5nly0z7ckk0vbdj89hz09yy2k9997p";
    };
    latest = {
      version = "2.1.85";
      sha256 = "0dqqsmjcii615vln8m2vcklkxsv9fn60jdrv97qg9fy2h8d768wh";
    };
  };
}
