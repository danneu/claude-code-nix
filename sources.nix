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
    version = "2.1.112";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b05381f382754012b95984016000f7062a2f127a6a3a843afc37ebd7d4672340";
      };
      "x86_64-linux" = {
        sha256 = "57be9406d3e5cae259552790bf7288dd6496675430ec93dbed76a33a57580d3d";
      };
      "aarch64-linux" = {
        sha256 = "1015ef5747767cdac58376de4ec990253dcac49314d54e19750d5512fa7422f6";
      };
    };
  };

  latest = {
    version = "2.1.119";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31db3444309d5d0f8b85e8782e2dcd86f31f7e48c1a1e83d69b09268c7b4f9a2";
      };
      "x86_64-linux" = {
        sha256 = "cca43053f062949495596b11b6fd1b59cf79102adb13bacbe66997e6fae41e4a";
      };
      "aarch64-linux" = {
        sha256 = "382aa73ea4b07fd8d698e3159b5ef9e1b8739fae7505ba8ddd28b8a6a62819ce";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.112";
      sha256 = "02fylpn9lgyk22fq1x3iv5yv2z2cpvg7g3qs4gyyb82kx9lrjdw4";
    };
    latest = {
      version = "2.1.119";
      sha256 = "1wimycampcgb1gfy9zx30zjq37b1ld7vrnbqiawf1vavxhr308bh";
    };
  };
}
