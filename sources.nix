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
    version = "2.1.126";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "87a1d05018ceadfc1fe616bfc10262b0503f51986f4af2dc42d1ed856ed3f7bb";
      };
      "x86_64-linux" = {
        sha256 = "fce96968d275161ff65a4c19fc6434efc6973d9f6d35dc3992a2ba0553cac18e";
      };
      "aarch64-linux" = {
        sha256 = "88a6dca613a40559f3bac8a946a2ec6e60a870b91938d3df93dcac1dec4848cb";
      };
    };
  };

  latest = {
    version = "2.1.138";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "759d23ce626193c89bc8b35c5c6ca8a9e33b9c2e504ee143e4cd119988774097";
      };
      "x86_64-linux" = {
        sha256 = "c3c56ffbc12cf16e40c33687c9fe6361ed250c35a9e1718d0c38d49049f5f8c3";
      };
      "aarch64-linux" = {
        sha256 = "693ecca41a62d58fee660884bd982ca5cdeab5b277925fcdfe880cdf02f98671";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.126";
      sha256 = "186lzlphd1jnhg0z2xqq3hljrnxrrfcp2cnkhhgz8z7nsb23sxrb";
    };
    latest = {
      version = "2.1.138";
      sha256 = "0jyy6wb681kbi1pg7k4x0c9jzfzk0h5l48pl1vkrixw5lshiqjvx";
    };
  };
}
