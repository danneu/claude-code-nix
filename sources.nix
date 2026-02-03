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
    version = "2.1.30";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3ccc14f322b1e8da0cd58afc254fd5100eee066fa14729f30745e67a3f7979f7";
      };
      "x86_64-linux" = {
        sha256 = "ada8f1cf9272965d38b10f1adb6cea885e621c83f7e7bb233008c721f43fad54";
      };
      "aarch64-linux" = {
        sha256 = "45fbf35a1011b06f86170b20beb64c599db0658aac70e2de2410c45d15775596";
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
      version = "2.1.30";
      sha256 = "09hrk4m77fghzlfzksn062s8r42h44fz18dac0mnaj8hk0c3b2ms";
    };
  };
}
