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
    version = "2.1.90";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "73c1a7570501ca743cd2d7467cb4699103534a2138052a4e6cab53c0e09d79c8";
      };
      "x86_64-linux" = {
        sha256 = "6074e3959989b2958a9abec60adf7b441a0f6f1c7e66401abff0fe54dad04fd6";
      };
      "aarch64-linux" = {
        sha256 = "15d5089ee7d9981faacf5463eabd427a012814d9fc02113883bb23a4f387ad4a";
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
      version = "2.1.90";
      sha256 = "062lnlkn2by117rv8g25c9id67rwqpmlnx5gn1gmnmpcp87cjjcf";
    };
  };
}
