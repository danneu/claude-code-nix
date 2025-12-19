# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Native channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)
#
# npm:
#   - Single version from npm registry

{
  stable = {
    version = "2.0.65";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "450c94c4c0d656c4d332146411543de976c6b4401637807e6613f350fb8cb8e3";
      };
      "x86_64-linux" = {
        sha256 = "cfac3d6fe993622b6afcee02631e24e6f990c924733e63be9b7482a56627a9ca";
      };
      "aarch64-linux" = {
        sha256 = "e336a5542be2ea44e8aae5a8f924553519b8c3247f3c5d82206a725afbc048c7";
      };
    };
  };

  latest = {
    version = "2.0.73";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "37bc9c91cb8c5a8579f2110a1f1eba79af0f56a2a1456fac873aabcd8578dca4";
      };
      "x86_64-linux" = {
        sha256 = "950f96edb17619a94d53a5319bf56c18ffa2b8ce515f65bb1c67952c9977e060";
      };
      "aarch64-linux" = {
        sha256 = "7794da574057121a4b3b63bfdc3e04fa198b3f0b9460e3452e9ec983688a0996";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.0.73";
    sha256 = "0c41gbzmr4gjm9bw73w9sfgx1qcc93vwxz48kghc12pqm4srkhbn";
  };
}
