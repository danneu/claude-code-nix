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
    version = "2.1.236";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6bc4ba992d2786cbf0237c4453ca53c1fdf0c3b3d83ffa0025c0d8190ed27848";
      };
      "x86_64-linux" = {
        sha256 = "6c8818fa22187aa555c242be4abbacc44d6b71a32ac9631ee7b2b5d12f51f752";
      };
      "aarch64-linux" = {
        sha256 = "c38d37deaf1643083326c48a6acc0afb09dada126e6bda77ef1a4410ae60ca12";
      };
    };
  };

  latest = {
    version = "2.1.266";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "553d1b9e9e7068b275c0a783c7e139ff6503096f286e674c8c919379fb0eca62";
      };
      "x86_64-linux" = {
        sha256 = "19842705e989393fce936804df6d2ab034860e24b8f8880357981d87ffd83fac";
      };
      "aarch64-linux" = {
        sha256 = "6e44c5d3c97efaa1ee35ab8dd875a907681707e5cc4f6ca0da3d13a917bbcedb";
      };
    };
  };

}
