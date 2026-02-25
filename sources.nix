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
    version = "2.1.53";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1b6713b88d8b93fc9d268ffec3b27db270c96f742df82b4536e2e4f94efb1f52";
      };
      "x86_64-linux" = {
        sha256 = "debf286f2a5e974a50f102a034a2dfb5df8cf4ac54f7f4136260b5f900385757";
      };
      "aarch64-linux" = {
        sha256 = "fba4d70283aea66df7d50fd6cf33cec0fbcb0bf7959abe284f8a5a5672ed5e33";
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
      version = "2.1.53";
      sha256 = "1yxlyqy6dvgqf74fbzqkv0r0a14nh5mdb5kjcnqhmmqcnfx6mww2";
    };
  };
}
