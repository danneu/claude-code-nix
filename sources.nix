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
    version = "2.1.268";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "06a96d5423f83770f120859f1c58e60d7252cc4c122aa13043b7e7cd716bc76a";
      };
      "x86_64-linux" = {
        sha256 = "9691a2b7bd796712ca8cffb8e32e54ff7fc45b662540233171a16a94a0425653";
      };
      "aarch64-linux" = {
        sha256 = "116fd031f939ef1e09edf170d62c489e1cc28ed6bfbda49f948773ba168c8f62";
      };
    };
  };

}
