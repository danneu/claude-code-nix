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
    version = "2.1.120";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fad8faf49c7b1b454c38d785b75e17edbdadc7ffaf450b31349aafc6560b8ef6";
      };
      "x86_64-linux" = {
        sha256 = "12c0d6eb6d39dc2597fd131d8ea4f12ed8bf25b47dadd9173878e6d025959c9f";
      };
      "aarch64-linux" = {
        sha256 = "a6d0d25946c32a24b4e04471af70845a45428ca069fb3b489345f2a683262279";
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
      version = "2.1.120";
      sha256 = "1524vipwqd514gabmxpwmq61cvjgzgvpaky4z9y8lhfqrl45xjlv";
    };
  };
}
