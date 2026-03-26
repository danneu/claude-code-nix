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
    version = "2.1.84";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c02d911ff13f8ceccb1f6662bf211f3cd9f29d5a46f031c3cc40654eb759aa29";
      };
      "x86_64-linux" = {
        sha256 = "c6872aa8db94f303bc6a4482664e40d3288dfc989c89ba268473ed32e3055878";
      };
      "aarch64-linux" = {
        sha256 = "5c868174b44439e51c74ff084c306856c41779615250d5bbdaa5d10056362814";
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
      version = "2.1.84";
      sha256 = "01mnfk9ji9z5gyzkbmfzv4cjxq66gfwff7nmddzbbj6gja2l3pfd";
    };
  };
}
