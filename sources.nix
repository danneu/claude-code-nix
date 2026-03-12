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
    version = "2.1.74";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "48a07e2887cd4879219d319e48ac5cc6e2098238c7c0abe01c57a35430941cb7";
      };
      "x86_64-linux" = {
        sha256 = "e5613610deee76cd32bc9b8e9e364da074fcd880705f837a4c9ee1ec38f9b73b";
      };
      "aarch64-linux" = {
        sha256 = "bfa883897a26433c5132a641b32d1fce00e1eff04a61bf52cd9ab85aeac2ea95";
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
      version = "2.1.74";
      sha256 = "060qkn07hx63w5qn9ssix865ihi6w6cm1blxircpd4pqx8kkxqyw";
    };
  };
}
