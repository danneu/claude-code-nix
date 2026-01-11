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
    version = "2.1.5";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fec6ccf4f1bc3c56ebd885c0b032e00ac3e04eb029edfbca166ea4379e1697af";
      };
      "x86_64-linux" = {
        sha256 = "bff6a9403b41ff4792dcd3d75cc2d49afa9f4efdd0e689c66a952ab301ed3802";
      };
      "aarch64-linux" = {
        sha256 = "371c19400a0c7f44bace9f8b24f10cf8fbef8842185fb5f69d5290ba8b04f1dd";
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
      version = "2.1.5";
      sha256 = "0lpd1kq5sanx764j4rvbgki5ljsbc6ygip716b4c17s6mf88d5d4";
    };
  };
}
