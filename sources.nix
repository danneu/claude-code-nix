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
    version = "2.1.59";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ef70dae6ed08b5538f6d157a8c8591f72c262fb8e570c94711bad3ae4ee44afa";
      };
      "x86_64-linux" = {
        sha256 = "7a4a653982b07e0a8157f8d3b2c2f8e442520ab07b2fa2e692ba054dbba210c9";
      };
      "aarch64-linux" = {
        sha256 = "78b0ea5a64793149f550ad3ddcfcbc7147128a600243839f703fb5b6a2194859";
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
      version = "2.1.59";
      sha256 = "0ahxw1g7zm3sw2cjcvn653hy5662vqi6fdn435mppgpvcsmari3v";
    };
  };
}
