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
    version = "2.1.260";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3c269f66801028823e24a63ced9fdd3988cb86cf85fccd9f03f87e463b9d3e3c";
      };
      "x86_64-linux" = {
        sha256 = "7a2fdc74b6836ea3d183f665b869f0ee3baebc9713cbebffe5838da4ea7bd82e";
      };
      "aarch64-linux" = {
        sha256 = "9811afb5f97224c2c5d3d0ee1e8c316117d298d5ec3e095d5ff0c1dd0e889ca5";
      };
    };
  };

}
