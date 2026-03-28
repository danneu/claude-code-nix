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
    version = "2.1.86";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "76fafee995269784b1bf80b514c3b354394288fb794bed01ef20168874e088ea";
      };
      "x86_64-linux" = {
        sha256 = "adce02c5f94a85b6ca231c8aeef533707597cd387e8934776455b87d10a3051b";
      };
      "aarch64-linux" = {
        sha256 = "c04aebe3de140679b4cce158812d6f011b7e9c483496ccb0472cf38cc1714afe";
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
      version = "2.1.86";
      sha256 = "12vkxmzlkvxv4fimrkj54nby1nya0p9bww9bb62vdwn9ihx2mfkk";
    };
  };
}
