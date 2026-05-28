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

  latest = {
    version = "2.1.154";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bc9881b107d7be1743c64c8b72dd66798f5d0947dbc48ed0d77964c473661fd4";
      };
      "x86_64-linux" = {
        sha256 = "67f6cab7e6c124010f62ac18f8078bc09e0db6a5b9e8ae874e9e73033c451793";
      };
      "aarch64-linux" = {
        sha256 = "9f732de278f7adc61d29fd5b055ddaf1bae3bb26d75fe6e06a125602565777a8";
      };
    };
  };

}
