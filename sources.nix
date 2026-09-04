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
    version = "2.1.261";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5efecaff231b798be3c66def9be54183623b328b80eaef17f93c43987024e82a";
      };
      "x86_64-linux" = {
        sha256 = "4ae40dd1784e85753e742e09f267d29ecbb82890361ad3817d27560866d364a6";
      };
      "aarch64-linux" = {
        sha256 = "7bbed5a9b0fc2e4ec67bad3490d06ca91b86d6b037d47520b7898951757d1b8a";
      };
    };
  };

}
