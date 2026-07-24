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

  latest = {
    version = "2.1.219";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a8e806faaefac53c7a0f26523d8a45c60dbef3407b14ef990c75765d08febc82";
      };
      "x86_64-linux" = {
        sha256 = "22cfd6f5b3061c0391ba84e9cf8c9deaa37783aac18b004d42ec061e98f00691";
      };
      "aarch64-linux" = {
        sha256 = "1f834b322ba9d1291cc7ffeff16a6795a59145bda279dbd59cd7ecebc7b7f15a";
      };
    };
  };

}
