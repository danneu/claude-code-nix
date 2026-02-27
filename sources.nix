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
    version = "2.1.61";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3f5d3706746effb2f875e3db66682662ea3b5d7c196b5a0fad8fb37a6fc6cfdb";
      };
      "x86_64-linux" = {
        sha256 = "b1c15907b3ee39b2f0b6cc6427672206dbc9e5a68c54448d3b0dc411776eb031";
      };
      "aarch64-linux" = {
        sha256 = "c9f1dac058c6eb4530d12ccb89241363e730d4452a53277ecae76527c45c0c5e";
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
      version = "2.1.61";
      sha256 = "02r1xjab1q32l231n9drpyqipv9w3kba69c0s98ll0brbkcs04ry";
    };
  };
}
