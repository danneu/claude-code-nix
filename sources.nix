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
    version = "2.1.121";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3810e55d47ed4d413de6dc037e34d58948f779a4c6bdeeacf1748d850c5daad6";
      };
      "x86_64-linux" = {
        sha256 = "b4b684bbcb3a88029ec419dbc08824b2f3c69656a0aa2374860f9525fc67c98f";
      };
      "aarch64-linux" = {
        sha256 = "71b78e6364f97a227b17be40dfcc237461f8d2b1d109444d24b42af0fdefac31";
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
      version = "2.1.121";
      sha256 = "0q1li9aln6fx7q5982cn44n1bvznbm3ranwazaxcxm83v0qqzcpv";
    };
  };
}
