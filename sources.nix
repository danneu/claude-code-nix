# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.236";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6bc4ba992d2786cbf0237c4453ca53c1fdf0c3b3d83ffa0025c0d8190ed27848";
      };
      "x86_64-linux" = {
        sha256 = "6c8818fa22187aa555c242be4abbacc44d6b71a32ac9631ee7b2b5d12f51f752";
      };
      "aarch64-linux" = {
        sha256 = "c38d37deaf1643083326c48a6acc0afb09dada126e6bda77ef1a4410ae60ca12";
      };
    };
  };

  latest = {
    version = "2.1.258";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b63136194160791c27cfa7b0403060d85eb0752991625fde8c09f9acacb17c78";
      };
      "x86_64-linux" = {
        sha256 = "704f1334ac65d3e89e1c6c1d7663293ad786a6166afdb71b5075337df630f976";
      };
      "aarch64-linux" = {
        sha256 = "43dc490af55262edcb3e9b1cb315de22cc09ccb08bd52a4c39bc5eabaa63100f";
      };
    };
  };

}
