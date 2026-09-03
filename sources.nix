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
    version = "2.1.259";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "884baa38fe1a624be25c4a91568bf5a08b5cf4e7d7acf29b7760e3525d964898";
      };
      "x86_64-linux" = {
        sha256 = "f7dd62ae415378018cd21dd950eb3bac174ab085830304d3b8b098146bfd47b6";
      };
      "aarch64-linux" = {
        sha256 = "c6ff03c389ccdeae0f19e9dc32488eeba61fbef4796f531dbfba6c00f45040d0";
      };
    };
  };

}
