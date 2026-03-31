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
    version = "2.1.81";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d014162177fc18bfeb7f93d942130dd964f7424e4101f6ad569de66e6eddca03";
      };
      "x86_64-linux" = {
        sha256 = "047e3f5591d6238b08dd9518729ac335b0e8df1c80fe985e5d7fbda2c18fc281";
      };
      "aarch64-linux" = {
        sha256 = "ccfc3845c8d1a2ded9656a3a517694a844a1b7005b87c784a66f7a60cc58012c";
      };
    };
  };

  latest = {
    version = "2.1.87";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "80b51562db1a51bfb654aec1fea6a04106daa0bc1525d88c9c74741ff5d9469a";
      };
      "x86_64-linux" = {
        sha256 = "b1a5b89469862adee0e4dc28cab5a8314bc4d0117e19ab26a7b7ff7ce9b59bd5";
      };
      "aarch64-linux" = {
        sha256 = "193c5e9c091eadde302fa23af46c8d646b7263f74fa06ed32746e504bd09df18";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.81";
      sha256 = "0bsvqj5pijbkihq8qr07hm2jdhmjy2pi55sm1ciad50s4ikwqnl7";
    };
    latest = {
      version = "2.1.87";
      sha256 = "18lnqln4piwjdv7aky3fswsf1ccrb2hmnpm0qcaf9dr3s8jchmax";
    };
  };
}
