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
    version = "2.1.55";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bee027430cbdf3247e5462145c075841ee6a158147f3b41081d444b72f68040f";
      };
      "x86_64-linux" = {
        sha256 = "c4ba00f654e539cefde027f5371371f519ec1394925abfcb09661af613aa7489";
      };
      "aarch64-linux" = {
        sha256 = "476f7eb2f9b1d04c66e48cae6722a066bd7d7edfab324ed81111552ca2d8d890";
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
      version = "2.1.55";
      sha256 = "1xrxjqz53yrfnkxi84r9z5m29y8bn482mmxspdsyqpwy937zgm7s";
    };
  };
}
