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
    version = "2.1.19";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d386ac8f6d1479f85d31f369421c824135c10249c32087017d05a5f428852c41";
      };
      "x86_64-linux" = {
        sha256 = "4e2a1c73871ecf3b133376b57ded03333a7a6387f2d2a3a6279bb90a07f7a944";
      };
      "aarch64-linux" = {
        sha256 = "8c4b61b24ca760d6f7aa2f19727163d122e9fd0c3ce91f106a21b6918a7b1bbb";
      };
    };
  };

  latest = {
    version = "2.1.32";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "841ac3051c04480a5651bc9f4ae27ab9d3963477250e71892e4d6e05778dd9d3";
      };
      "x86_64-linux" = {
        sha256 = "96cd1ba796772481bd49bd67e3b8484565d1f3a99662565516c3bfe16d9afd4a";
      };
      "aarch64-linux" = {
        sha256 = "6f8390c0fde5b802ff777ab54225233f6159d76913adc3b8aea7c8774fa8fe70";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.19";
      sha256 = "1b54nbbr4w4gsv4x7nzysvm836dzw9v4i2my2rrz8mi4prrmcwpj";
    };
    latest = {
      version = "2.1.32";
      sha256 = "1v811dwpqj3yfyghdw9zwiw7l8xdgq3zb8bnx3w7jnkihnqqzh58";
    };
  };
}
