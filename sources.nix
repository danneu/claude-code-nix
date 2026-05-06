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

  latest = {
    version = "2.1.129";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fad2ac75c38ced2c57d046e64927c9ee4846f5ac75ea3bf8f0525ec66438c109";
      };
      "x86_64-linux" = {
        sha256 = "4af400fa74c8891d69b0cd9e3704ef49133df7a19d5c66456fa0f5e84276e160";
      };
      "aarch64-linux" = {
        sha256 = "be1e037e762e49b28f96f201bbd0fb82153725e16122f6e33623c85fc8f1abc8";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.119";
      sha256 = "1wimycampcgb1gfy9zx30zjq37b1ld7vrnbqiawf1vavxhr308bh";
    };
    latest = {
      version = "2.1.129";
      sha256 = "0s2csd2k45b48nkz77b7ih6m3w3xryn9bfa689jhnpwhw7dqmrjr";
    };
  };
}
