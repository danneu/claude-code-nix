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
    version = "2.1.17";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1d819a7c0ed1ad6275f42cf2b67041ab809afb1cd3537c6ed6e618b88e5a0531";
      };
      "x86_64-linux" = {
        sha256 = "11a8bc2dece1cd7717a4c113883a573095511475545595d2b0e96f188d651e0f";
      };
      "aarch64-linux" = {
        sha256 = "c21625c0f9627ba431c5be3573c4f8a0dee64b57e0d11220930c29de1028f829";
      };
    };
  };

  latest = {
    version = "2.1.27";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "457dc3958139a356eeff23711074c45d393fb3c82e868bb7a1565ab7a5786f0c";
      };
      "x86_64-linux" = {
        sha256 = "24df91dd250b6d7f6a0f8b256affab6c7a4bdefa64b1ece8aca3235d5f5e4044";
      };
      "aarch64-linux" = {
        sha256 = "6166a8eeb82eba410b96030ab4b1330a27c28bdbdc4e313db45e5bfcc25d1e66";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.17";
      sha256 = "1b3vvph1f0zv75aryzsb5kq7ivzhfw60aag19plz8kv0czdkbs2f";
    };
    latest = {
      version = "2.1.27";
      sha256 = "16xnvxvnx7h7spb5dprgvqpl320bvbg7w9kjqnjmqbkc7n4m1dih";
    };
  };
}
