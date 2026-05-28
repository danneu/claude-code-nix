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
    version = "2.1.153";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "449d9c89d7a63b1d427d912a7bd6e6f23f9a7b363866697c9fa9a0012546b254";
      };
      "x86_64-linux" = {
        sha256 = "214f603f31942162dac9a65f18d43b3ac646ae215240fad481c4aad6c60f2e38";
      };
      "aarch64-linux" = {
        sha256 = "6277fbbea72228a069e4719fc3e5fa36f16749247a2321c520dae93e83e92d9c";
      };
    };
  };

}
