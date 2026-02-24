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
    version = "2.1.44";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "03cb80fe89e645f465a11b519fc31bd4295c30d33f47bd84be5a018fffd7a4c7";
      };
      "x86_64-linux" = {
        sha256 = "090ed3f06be51388bc511f90214484891432c160349c9c3fc6a131001c763381";
      };
      "aarch64-linux" = {
        sha256 = "335f440cfa4c3b020e79896a00bfb68376c6efb11051c7e6736732acdc74d6ee";
      };
    };
  };

  latest = {
    version = "2.1.52";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "21e8c49b3111fa69e88f450a94ee4e88df69312823017bbf61ff86a461fcfc23";
      };
      "x86_64-linux" = {
        sha256 = "70c1f9881b7c091c49f3695c94c381d9cca0af094bcbc99cb9f463e44d97ce9c";
      };
      "aarch64-linux" = {
        sha256 = "afe081990936550a98edc680860e6f16cd9fad300fb53b4ab27c7071c70968f2";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.44";
      sha256 = "15zwakq45lc3w0ww0ymhm2yzid95p1wypfkivd8njd5xdwnaanlw";
    };
    latest = {
      version = "2.1.52";
      sha256 = "1r9668crz6xn8nlk2wmkn9yl9l42djh067iswaqapy3hgq89fcij";
    };
  };
}
