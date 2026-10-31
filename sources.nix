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
    version = "2.1.309";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5eadc0009cdcdbc0d06e58110d7b2baf88ced6088b1c33a60a21217fe410619c";
      };
      "x86_64-linux" = {
        sha256 = "4d704a8aecbe038affa3000f498ae17c1b4f753add8facb8764120affc99b658";
      };
      "aarch64-linux" = {
        sha256 = "9796dd26899337f687739a0b39a7353b639f062a3436a7b941fcf19a1b757a9b";
      };
    };
  };

  latest = {
    version = "2.1.316";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "64c327e92b2c5e0f78c0a980c5a518121e1f0d140ca771ca5dd4488d1a2dcb3f";
      };
      "x86_64-linux" = {
        sha256 = "fd13c70000fec3f2116dfbcbb6121210b4a29328bf0e46210a59dd594a67d824";
      };
      "aarch64-linux" = {
        sha256 = "55cdb8e162d190432696ea54010e0fca2e18d06fa7a7127fd563b9ffd4f22624";
      };
    };
  };

}
