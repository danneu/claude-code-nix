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
    version = "2.1.38";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7326b0d32f9ad8637a2ab97fdb4e853777cffac4d63aa59108441774795be8d0";
      };
      "x86_64-linux" = {
        sha256 = "7858f90922bf63d33857b63e054e08a6fca194073953d88d50d621f9cbae0069";
      };
      "aarch64-linux" = {
        sha256 = "e9d514102f84b8858d50c98bab21393a2d96ac489543b72beff0e58fd609192a";
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
      version = "2.1.38";
      sha256 = "0jcs8x98mcw2kfay47jf5kafa4km8zznj6i5z5sgsan4ivc2x3zs";
    };
  };
}
