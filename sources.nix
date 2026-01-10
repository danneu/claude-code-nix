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
    version = "2.1.2";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4d9c45ef1932914d45f7d942fff65caa77330c28029846881f3d755d7b88120b";
      };
      "x86_64-linux" = {
        sha256 = "83ec742dd439a960bbe04dab1794e62fe62804bce9f62b94f3dc64ff802a0b28";
      };
      "aarch64-linux" = {
        sha256 = "ad61c9b8a1767262bf4d40cb216a9038f1bdeca5b18a317c67f6bb6a29da4f23";
      };
    };
  };

  latest = {
    version = "2.1.3";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4c8259d2e87e11874b0ac2a6cc1c83271ebb4dd4b2fee9cee92fe4a5f7db03dd";
      };
      "x86_64-linux" = {
        sha256 = "c8de68f17954c30157100600c7a85e6dbaf8bca64875e65071f5e87fbc62d882";
      };
      "aarch64-linux" = {
        sha256 = "1947e332e10bfc961ea974cb98b6f53f2c85c3d8c2d0ff476f9093c49864b35f";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.2";
      sha256 = "08l24i6qbrjnaymqh2wr4z06yfh14k54id6gas347s5wmns50968";
    };
    latest = {
      version = "2.1.3";
      sha256 = "1j0ci47bf8lkzgq32hi7dyqv122zrjvbv3sbak68015g7rg6fqb3";
    };
  };
}
