# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.140";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "087ce732fb79658cd3e828cc377291dc56835fc5318cd519123b0880a09149c0";
      };
      "x86_64-linux" = {
        sha256 = "807a5d6ca063f5e03e4b7283934036a3122723b28c28e1a6978e98cf2d43d0b5";
      };
      "aarch64-linux" = {
        sha256 = "0ec6fc062e99aa95a6edbb5308a563262d27a0772b107d01d4fa61110fb44472";
      };
    };
  };

  latest = {
    version = "2.1.146";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b16f466a2213a04cecf1ad958201655148a49f42952134e6ae182257ccfc08f3";
      };
      "x86_64-linux" = {
        sha256 = "825d5301380f1f5f466c5268de25a062927be658938fc1d630cfa02c521b8185";
      };
      "aarch64-linux" = {
        sha256 = "af25334c7a2632a531b34e3f4c0d69763b997149d31d5f0d748e44813758806f";
      };
    };
  };

}
