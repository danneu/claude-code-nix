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
    version = "2.1.32";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "841ac3051c04480a5651bc9f4ae27ab9d3963477250e71892e4d6e05778dd9d3";
      };
      "x86_64-linux" = {
        sha256 = "96cd1ba796772481bd49bd67e3b8484565d1f3a99662565516c3bfe16d9afd4a";
      };
      "aarch64-linux" = {
        sha256 = "6f8390c0fde5b802ff777ab54225233f6159d76913adc3b8aea7c8774fa8fe70";
      };
    };
  };

  latest = {
    version = "2.1.41";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9e23cfde9ae65f656304ccd7513c22e50f73c7ad7c8924441236512dc67c3543";
      };
      "x86_64-linux" = {
        sha256 = "37d223ec9b54020db8570238bd7726b3df78d350c4cad3084f892f4b58f052bc";
      };
      "aarch64-linux" = {
        sha256 = "dabc602584e89747d04945764e12b1ba050e58279421d8db4c0b2efc96a1b62a";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.32";
      sha256 = "1v811dwpqj3yfyghdw9zwiw7l8xdgq3zb8bnx3w7jnkihnqqzh58";
    };
    latest = {
      version = "2.1.41";
      sha256 = "16bnh80nz0sh7lqp0m1r78s57jpmbb3a90xyqlc23w222vqqk2y6";
    };
  };
}
