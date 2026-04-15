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
    version = "2.1.92";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6d1b9657727dce81332b3cda11bfe0a8c83e2392e3c062a31022e10b0e71cdd1";
      };
      "x86_64-linux" = {
        sha256 = "e22324514967ff2d5e9f91f0ee37e4675bf8b6dfec27fafb19cb25cc5b23fcaf";
      };
      "aarch64-linux" = {
        sha256 = "08deb3d56477496eb92e624f492e25b123f4527dd5674f71afff58a48eccd953";
      };
    };
  };

  latest = {
    version = "2.1.109";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "cc7e26eb08521a5315094a522775c7f17bdeef2d6d8d9040205af6d2e6dee595";
      };
      "x86_64-linux" = {
        sha256 = "d40d4c9eff224be6ba3586fd1b05acc3c8b3266998d67488a259ddcb82a6be5f";
      };
      "aarch64-linux" = {
        sha256 = "6ab80a11e590553ad8cdb8d5d93df93fba1caae329b48f453b1af9c94b4493db";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.92";
      sha256 = "0iwkfjb3nq95b9iz1hng2i3vdcdb2aph35jmaccagcz62vwqby7z";
    };
    latest = {
      version = "2.1.109";
      sha256 = "0a3imym1g9g1nnbzrr47ic4p7376c9y2l9m5qx8vlh91bg8bjj84";
    };
  };
}
