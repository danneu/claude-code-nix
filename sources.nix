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
    version = "2.1.136";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9ef618487dc9e0cb766e8d0d51cd5fd3d06c3d038f4f04f3e714791f32a3cda5";
      };
      "x86_64-linux" = {
        sha256 = "d8e5337966ae43b1832d1368823bddc77aba08a5f9ffabe44c75e34a6b83a8bb";
      };
      "aarch64-linux" = {
        sha256 = "1d5e30b263959f8c32bf11532601ad468948c560c4c49236eda90da1bf8285ea";
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
      version = "2.1.136";
      sha256 = "03bmshdgjdn2nlvpkw76ifpnznwv0w54s3njxlzay9q7c957vrcn";
    };
  };
}
