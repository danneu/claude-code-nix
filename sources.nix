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
    version = "2.1.70";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6181e50bc9a4185f36e543744d256b740e0dfa3c3fdcf1d04b78387b2b466781";
      };
      "x86_64-linux" = {
        sha256 = "1e5c1011ec899ef0ca9f0811c13c3ed44437422aed85af600d5fe50746faaf1d";
      };
      "aarch64-linux" = {
        sha256 = "264c669ce4740bb4896b07ac0110190bcf618eddd4fb0068b3fe2ce989734682";
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
      version = "2.1.70";
      sha256 = "1lk7g7q84xkxk79dhhxwdk3lzxm41gf3zvcp04jzc1a1fzrwaqv0";
    };
  };
}
