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
    version = "2.1.137";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6d91ce741b8aa129fd43c2f844b39dcc1fec8cfd77e8e5a1ed0f0e7ba54cfea9";
      };
      "x86_64-linux" = {
        sha256 = "ae29f87fdee2d42b5e9ff05c84256bf50a0e7edaa2d58975f9b4b2bd2c29897c";
      };
      "aarch64-linux" = {
        sha256 = "8198e7c845a4f3806504b7350424158970c24c56724de400675d6597507d6183";
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
      version = "2.1.137";
      sha256 = "0zyvwqdx8jlvcljj9ha8vvqx218bk5cgdgj13al2vfgh3dbsmbk7";
    };
  };
}
