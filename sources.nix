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
    version = "2.1.88";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fe0d191adb7b0d26badd1e303e95a63d62d526ca1fb5882f53644754e1e9fe95";
      };
      "x86_64-linux" = {
        sha256 = "ced6cac958fa4425b90e6c9341a26731715fcb1a253d5bc0f51c8d5a3a6ab66e";
      };
      "aarch64-linux" = {
        sha256 = "2ba4ac149b2198c15e45837fc504146c735fc1e82b9fdf717c2a6b9e0f70c02c";
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
      version = "2.1.88";
      sha256 = "04zqbqkp0xs4dlw9z5scj1w082141v2j8m82lyacbv2hj5nshdnq";
    };
  };
}
