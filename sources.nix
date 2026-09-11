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
    version = "2.1.269";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c942e1228b93cb4d52183b3dfbc77f28264f35aa947acd9c0853d029164cf450";
      };
      "x86_64-linux" = {
        sha256 = "25e44883f54419569a3d739f38cbbdaebe83b09895da0f343e1b003710a4775b";
      };
      "aarch64-linux" = {
        sha256 = "4c84a33adc34c60d4de3acd43cfe7c64ba966591e51587c04867b8d589021be4";
      };
    };
  };

}
