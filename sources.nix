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
    version = "2.1.308";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ca923c86ac84b30574a82331a05b6e066c27477a926ceaffe46a845a33e4dd37";
      };
      "x86_64-linux" = {
        sha256 = "356733f185fa988e6bf3aa9a555269fdd167982a2e2a80d3c8a78037bb92ad58";
      };
      "aarch64-linux" = {
        sha256 = "fdd22e6cbb734d580f5664c48df4294eeec850218ff07f186f9af30426396ee1";
      };
    };
  };

  latest = {
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

}
