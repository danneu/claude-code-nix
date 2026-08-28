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
    version = "2.1.250";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "506d7362a9c625306044879a9d91d8f33bd2eef963681b56be3295db5fe3e34b";
      };
      "x86_64-linux" = {
        sha256 = "2be252a00ac56e704d7fbf7e5e9ef1243584093334a861945238a0c27e84bdac";
      };
      "aarch64-linux" = {
        sha256 = "0f4ff542f895526499ce23d8752c64cbb2ceb05a32cf6a1c0d1e31d82b20643d";
      };
    };
  };

}
