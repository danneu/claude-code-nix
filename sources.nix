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
    version = "2.1.98";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "db75cb2c3f5c5ad24dc29af5145fea39ef58fed0faea0a4a099cd5afb291482b";
      };
      "x86_64-linux" = {
        sha256 = "d40827b5aa8d737a7eb68e3aad990b80e2521540a6bc8a405259b63b25d42ed8";
      };
      "aarch64-linux" = {
        sha256 = "67c0b9b7ed9c63f8524ecf5790805842f81d8322254dea849ecb8c7051f8df6b";
      };
    };
  };

  latest = {
    version = "2.1.113";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "189b1c94ace3f3e90cd4836562cbb7f1eba69148b1353ba92a38ff966cb6cb00";
      };
      "x86_64-linux" = {
        sha256 = "a81f7726b3b6b910e50c08a09f0090cb60714695d6d01bfe8698ff16cda9b87d";
      };
      "aarch64-linux" = {
        sha256 = "7656fabaa2ba449a88cd3757827c62886a6f2cf7c050ef9d8357e6351da48ee1";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.98";
      sha256 = "0yqbihi3km3c4gvac8bifni7yjc6kkx9g8bkph41k757x1y46dm5";
    };
    latest = {
      version = "2.1.113";
      sha256 = "1fxviislg51sbw9c7jhgkg277zsk0nghjf8mwy6nzhvln7qfkxkd";
    };
  };
}
