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
    version = "2.1.89";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f903a5e53f845b1ac5566296b713193827665f28da16300fdca7539cb0669a7f";
      };
      "x86_64-linux" = {
        sha256 = "903cb3c96b314d86856632c8702f5cdf971b804d0b19ef87446573bcd1d7df1c";
      };
      "aarch64-linux" = {
        sha256 = "428301f56cf0139e6fbfa55e13be3f0f032ac1eb5ddb8849fbc703ee220c1cca";
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
      version = "2.1.89";
      sha256 = "11wwgbqmcqhmhnazi8y0d70f72vmpcja7qsqi7sh9di43c03a3k8";
    };
  };
}
