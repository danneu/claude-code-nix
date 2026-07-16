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
    version = "2.1.204";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1677b67595b6251156d62600dc85d4070ec385b72dd0b07e73742a56030952c3";
      };
      "x86_64-linux" = {
        sha256 = "c8ee1ea69154533c691a68f46abb645196fe7339d26e6fc204cc7f08220139d3";
      };
      "aarch64-linux" = {
        sha256 = "c37256a8c3998b8675e8385f1ae4677d69bdff1e717c389296eec70e02e317ef";
      };
    };
  };

  latest = {
    version = "2.1.211";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5a728a76198b6eca7f3c7cdbff43bab44b77b48c2108f7a3107d889773382629";
      };
      "x86_64-linux" = {
        sha256 = "8272c8a474ac9ea1bc35f19b9f7c7e7dc4dc4eb6d5ad3e484b19335ac72446b2";
      };
      "aarch64-linux" = {
        sha256 = "1fff7e8f947c07b19d10b1fbf714b7e547e9536253b9b58230d8adbc4624f867";
      };
    };
  };

}
