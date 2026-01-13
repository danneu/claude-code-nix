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
    version = "2.1.6";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2c126a43f4274383e5141fc10e23a5ec37ff1a8b05eae4f266fe9936c35f2a02";
      };
      "x86_64-linux" = {
        sha256 = "e86870ca13cd82d6d4570329a10a1fd68e11645747657afbdee925e26fc3952a";
      };
      "aarch64-linux" = {
        sha256 = "9e2c655a9ae31bdbecd8c6cca6cc0f4e2a595b8f422bd0181b1ff4387f65bed9";
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
      version = "2.1.6";
      sha256 = "0zpw4cb6gvdsc1405y8hsrxbwdm4lq324pmrvmqabgn232jlpib7";
    };
  };
}
