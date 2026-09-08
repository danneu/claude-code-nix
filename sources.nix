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
    version = "2.1.265";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "164b09eb800dedb9bb06304129fbf07743ab9db972ae07333ef4f18cde0cb8d5";
      };
      "x86_64-linux" = {
        sha256 = "e14738e3a58d1fc6ccc23b9c919451b4846bc27074a3fb48db976a7d595bdeeb";
      };
      "aarch64-linux" = {
        sha256 = "fc1f75b115d6a398f6437df0e00142b073c23633b040618758a935f634427c88";
      };
    };
  };

}
