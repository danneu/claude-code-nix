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

  latest = {
    version = "2.1.111";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2620cc83dbee72c24858b3519ce5de050fef91f0d3d17b309176d61e679f95ee";
      };
      "x86_64-linux" = {
        sha256 = "5d4df970040b0f83aac434ae540b409126a4778a379e8c9b4c793560e3bfa060";
      };
      "aarch64-linux" = {
        sha256 = "99376866bf7ec367142d3be548c17184a79f30a97318441ee9a00f78e51246e7";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.97";
      sha256 = "12ls9cay68zzadj8wjvldc83k30ks1sgj1rlnyy2a2fx7s48xpsr";
    };
    latest = {
      version = "2.1.111";
      sha256 = "067g0zyypl4l73062hkdbid2yyha3326ydmw4dsr2rd48zjm26nv";
    };
  };
}
