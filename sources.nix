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
    version = "2.1.205";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "33e28624c5ae84f2bd7d2d8761e5d2e77997ba965cb11b6448de6b6e2c566f9c";
      };
      "x86_64-linux" = {
        sha256 = "dd8734c0b6a503fe1d17425184e57b397c30bb0337a33f1470d9985febfe5b09";
      };
      "aarch64-linux" = {
        sha256 = "c1874c85bcd3a88b70439fd50ff5910b7e6ac5371c14dd49d4ccc2878a592d09";
      };
    };
  };

  latest = {
    version = "2.1.212";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "09ecba2ab2df9b6ee5b0695e26f65dea60fb3b6af3d3542ee09f466838d1e574";
      };
      "x86_64-linux" = {
        sha256 = "044a88cf3a5180776617fd3da1238dcbf9141ddec449a39cf7d2af1ac78e684e";
      };
      "aarch64-linux" = {
        sha256 = "66e88634a8573a002702e6a9de0d80cb9bb7c9072f9e6f4486778539057dfd3c";
      };
    };
  };

}
