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
    version = "2.1.58";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "182c20c6080d042e4e08a6b2a2ce8258c1a50e53c01d36ddf20a82b4693395ea";
      };
      "x86_64-linux" = {
        sha256 = "10f68e45b5ff4a80ae21e6d7a95dfe673ab3391313358ccd94e827f379f6aaa0";
      };
      "aarch64-linux" = {
        sha256 = "5edd4b6be6b9e9c00e5805f022ee924a98fdcf1bf0c04635a429d2666eccbc3f";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.58";
      sha256 = "065dkk0bnh408n6kdccqjhfqw7k20d231ky0m9ic93r6nhdnma8n";
    };
    latest = {
      version = "2.1.77";
      sha256 = "1c0l1zk04gyc2dhinsc41m5nly0z7ckk0vbdj89hz09yy2k9997p";
    };
  };
}
