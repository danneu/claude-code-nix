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
    version = "2.1.39";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d8d7a2b996a691036a53933a259a532254a400934aee452e289e1f4443026d82";
      };
      "x86_64-linux" = {
        sha256 = "68e4775b293d95e06d168581c523fc5c1523968179229d31a029f285b2aceaff";
      };
      "aarch64-linux" = {
        sha256 = "8f66e02a5be8a620e286f6e634fb424b5ac065731b048af3d745cf719b2c7851";
      };
    };
  };

  latest = {
    version = "2.1.47";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "73795e6d8f0aa4e07d8f20d351e0f84e515db2ce73b69770650bc3d5d582ef73";
      };
      "x86_64-linux" = {
        sha256 = "9c48bde67bda274d65c3d65da4f78e21a458ce722a8955edcc272d32c98c74a3";
      };
      "aarch64-linux" = {
        sha256 = "9255d330db19353d73b3975b0bc2ebaddd1cf002a62fa15b95a6bbfec8a9be18";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.39";
      sha256 = "1xn6lccs9g5j5cg5avakysp5sqbqzf9wwp4fx6p2606qwlp7z448";
    };
    latest = {
      version = "2.1.47";
      sha256 = "0qiq1ajn6dh0li0c5fxbak9hag4l4x4d1yi9y8059wqaah6nhap0";
    };
  };
}
