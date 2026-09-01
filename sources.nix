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
    version = "2.1.257";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "64590d7d9d9c189d33fb3dfa58c5408eaf2a10fe556bd84155d95efaab46b60e";
      };
      "x86_64-linux" = {
        sha256 = "9a64bda9d8722a1fa05bef9a5961d07e0331b99597eda9e2f6a732f3a0ff7f05";
      };
      "aarch64-linux" = {
        sha256 = "22f7d48f17193952c3c2d0b8bf2f31db2cd08fd5fb09a374fa321496b711d017";
      };
    };
  };

}
