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
    version = "2.1.252";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b661c6a094fcc32656bf7c0071c5b45bf900b34d4f0a1ab3d78fd59aeba2c2c7";
      };
      "x86_64-linux" = {
        sha256 = "a715a45105e593fc9808d035d77781f88480b9897975a9df41837f0c591bd4b3";
      };
      "aarch64-linux" = {
        sha256 = "6c0b32eaa936954a0f4d4ad2595f8416af288d9b3cbaf19e3cdd9a95d7c8853e";
      };
    };
  };

}
