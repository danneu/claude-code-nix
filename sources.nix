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
    version = "2.1.89";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f903a5e53f845b1ac5566296b713193827665f28da16300fdca7539cb0669a7f";
      };
      "x86_64-linux" = {
        sha256 = "903cb3c96b314d86856632c8702f5cdf971b804d0b19ef87446573bcd1d7df1c";
      };
      "aarch64-linux" = {
        sha256 = "428301f56cf0139e6fbfa55e13be3f0f032ac1eb5ddb8849fbc703ee220c1cca";
      };
    };
  };

  latest = {
    version = "2.1.97";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9104eba60ca82c590ababc5eee0d01f2dc5440d7cf2d668e4c48d6485e41cfeb";
      };
      "x86_64-linux" = {
        sha256 = "0d43fcd11d29206563eeef3a1f787f0615c21cd703cc91f3a180915fd5797ef6";
      };
      "aarch64-linux" = {
        sha256 = "85167cb721655fdd90b002012a28eca273c89dc2fd709be49afe2a7724c365a0";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.89";
      sha256 = "11wwgbqmcqhmhnazi8y0d70f72vmpcja7qsqi7sh9di43c03a3k8";
    };
    latest = {
      version = "2.1.97";
      sha256 = "12ls9cay68zzadj8wjvldc83k30ks1sgj1rlnyy2a2fx7s48xpsr";
    };
  };
}
