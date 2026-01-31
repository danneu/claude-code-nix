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
    version = "2.1.17";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1d819a7c0ed1ad6275f42cf2b67041ab809afb1cd3537c6ed6e618b88e5a0531";
      };
      "x86_64-linux" = {
        sha256 = "11a8bc2dece1cd7717a4c113883a573095511475545595d2b0e96f188d651e0f";
      };
      "aarch64-linux" = {
        sha256 = "c21625c0f9627ba431c5be3573c4f8a0dee64b57e0d11220930c29de1028f829";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.17";
      sha256 = "1b3vvph1f0zv75aryzsb5kq7ivzhfw60aag19plz8kv0czdkbs2f";
    };
    latest = {
      version = "2.1.29";
      sha256 = "0q7zyzdgpsm4gl46cmi30g7q6dawchcnim3208xrpbq32ywpi1qy";
    };
  };
}
