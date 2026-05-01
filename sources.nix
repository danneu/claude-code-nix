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
    version = "2.1.118";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "54e5d3f65109b89c6046f47440944d52906c662d1e51748f620a430d26ad3665";
      };
      "x86_64-linux" = {
        sha256 = "ba363b2410a47120d2d4b8ece2e11fe0bbc5d59adb1329e8fb87ea0f370f4e46";
      };
      "aarch64-linux" = {
        sha256 = "b77b22fe93c15409f3c64be67950fe11e5fc17d1cd327891596cb87dd9be0492";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.118";
      sha256 = "0ivcz9lxpwgvg0pbrplh1c00szwjx8mpf01087q71giw4fc25wbb";
    };
    latest = {
      version = "2.1.126";
      sha256 = "186lzlphd1jnhg0z2xqq3hljrnxrrfcp2cnkhhgz8z7nsb23sxrb";
    };
  };
}
