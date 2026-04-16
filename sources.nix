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
    version = "2.1.97";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9104eba60ca82c590ababc5eee0d01f2dc5440d7cf2d668e4c48d6485e41cfeb";
      };
      "x86_64-linux" = {
        sha256 = "0d43fcd11d29206563eeef3a1f787f0615c21cd703cc91f3a180915fd5797ef6";
      };
      "aarch64-linux" = {
        sha256 = "85167cb721655fdd90b002012a28eca273c89dc2fd709be49afe2a7724c365a0";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.97";
      sha256 = "12ls9cay68zzadj8wjvldc83k30ks1sgj1rlnyy2a2fx7s48xpsr";
    };
    latest = {
      version = "2.1.112";
      sha256 = "02fylpn9lgyk22fq1x3iv5yv2z2cpvg7g3qs4gyyb82kx9lrjdw4";
    };
  };
}
