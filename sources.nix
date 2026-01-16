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
    version = "2.1.9";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8ad1ad51cbca97921b67a2b9a638bde4caa04ff2ef78dc21a487e69af30cf69c";
      };
      "x86_64-linux" = {
        sha256 = "8e3da4e5c904191eb97013706f33a4199562dd06360d950676a62c87e9fbd0d0";
      };
      "aarch64-linux" = {
        sha256 = "4079ef1a0ef7fd29a9dd8083d3ef2ba00fa441a8601b1c0c659f13614ecd5956";
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
      version = "2.1.9";
      sha256 = "0l3r2s64dvcwhnvfw1jaq8dx1lz92q0iygnc9amlzz33206pix6x";
    };
  };
}
