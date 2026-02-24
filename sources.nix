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
    version = "2.1.51";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "450ed08049ff085e48ada3045880411a38968305a22276df54e555d0e29b18b9";
      };
      "x86_64-linux" = {
        sha256 = "874c8a92ae7d88381751e97e7d782b2a583641da07afc99328f785e4340455c7";
      };
      "aarch64-linux" = {
        sha256 = "127d33a582633470b32639ecabaf47d29e60faa1713ca6793ac441a5d32ec81b";
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
      version = "2.1.51";
      sha256 = "07fljp0anfcdph49abnap8138k39snmdlihsiacd8rai7h0b35ak";
    };
  };
}
