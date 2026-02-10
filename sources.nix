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
    version = "2.1.29";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "283e85de5aaabc707b366ef2b52e544a41480210b04b2bc9706bc8c7fe7623ba";
      };
      "x86_64-linux" = {
        sha256 = "4363a3acd8c39c645a7460ffba139d062ca38ddf40362508ea0be20159c4398c";
      };
      "aarch64-linux" = {
        sha256 = "89525e86803808fd20232ee781ca712542e995da32674d01011c63628a067cb1";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.29";
      sha256 = "0q7zyzdgpsm4gl46cmi30g7q6dawchcnim3208xrpbq32ywpi1qy";
    };
    latest = {
      version = "2.1.39";
      sha256 = "1xn6lccs9g5j5cg5avakysp5sqbqzf9wwp4fx6p2606qwlp7z448";
    };
  };
}
