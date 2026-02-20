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
    version = "2.1.49";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2b984814350ed9a9b70506bcbc10b77da46f5b3e06a9c6932f0731d042049b98";
      };
      "x86_64-linux" = {
        sha256 = "e7a7565665ecbccca2c6912b2ef29da2b137d260201b931c737b7dd3821c6e2f";
      };
      "aarch64-linux" = {
        sha256 = "e4e4ea8a9f8bce5f8fbaae7bac7c7a1826ea7ba68b38b9c2951e8466bca91331";
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
      version = "2.1.49";
      sha256 = "0fcwxxikpr8hij1jyb34889b609cv664hriry0gp7ffw8frpi0l4";
    };
  };
}
