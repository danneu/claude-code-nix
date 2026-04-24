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

  latest = {
    version = "2.1.119";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31db3444309d5d0f8b85e8782e2dcd86f31f7e48c1a1e83d69b09268c7b4f9a2";
      };
      "x86_64-linux" = {
        sha256 = "cca43053f062949495596b11b6fd1b59cf79102adb13bacbe66997e6fae41e4a";
      };
      "aarch64-linux" = {
        sha256 = "382aa73ea4b07fd8d698e3159b5ef9e1b8739fae7505ba8ddd28b8a6a62819ce";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.109";
      sha256 = "0a3imym1g9g1nnbzrr47ic4p7376c9y2l9m5qx8vlh91bg8bjj84";
    };
    latest = {
      version = "2.1.119";
      sha256 = "1wimycampcgb1gfy9zx30zjq37b1ld7vrnbqiawf1vavxhr308bh";
    };
  };
}
