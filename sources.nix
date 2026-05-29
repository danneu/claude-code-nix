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
    version = "2.1.156";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9c1e8601031f5cbb3101e49dda22bf8ba31183692c705e267a6923585fa2ba09";
      };
      "x86_64-linux" = {
        sha256 = "6d83cd2264450c5e54fc988be1032c288cf418ee604294acfb8fc4ac28f5f7a3";
      };
      "aarch64-linux" = {
        sha256 = "7ed95d0a93aeb40e2b98e234b760d9295b7044ef678c62db8d1f5e14bfd57878";
      };
    };
  };

}
