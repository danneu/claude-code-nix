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
    version = "2.1.139";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "aa8a0a39f2abbd9e09518eb7268cda105b8029620a38f5a5cbc362b65331c3db";
      };
      "x86_64-linux" = {
        sha256 = "c1800a0ae51b5a4c7b33be6a32d62b6169d93f6174119b2eeb6896cf0cd5d7e6";
      };
      "aarch64-linux" = {
        sha256 = "3985aaf75b3bff1d8d031b726c804e4152e1530261683cdce14e954f0af2c912";
      };
    };
  };

  latest = {
    version = "2.1.145";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "368dcd9709c85534f673071e7cc8eb5422bcff367fb9bdf5ce25d9619aab7ef5";
      };
      "x86_64-linux" = {
        sha256 = "b3ffbc12689bfe81389d6577787fcea4cab81bd3b6bba9b719e73770b62d720e";
      };
      "aarch64-linux" = {
        sha256 = "75ad61d690d79440c82b5841444e1b42caae55736af37c97dd0e068ef20ce390";
      };
    };
  };

}
