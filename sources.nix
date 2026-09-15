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
    version = "2.1.271";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "87d119eb46782a1369d79d6e8cc00557f1b51bc9db7a51bd01fa2f909d8fe3dc";
      };
      "x86_64-linux" = {
        sha256 = "5e7b6fc24d0e124f68e99a0641c47b662945c6d197d768d7ad7a72cbf1897f58";
      };
      "aarch64-linux" = {
        sha256 = "daecf0a2fdae57c1603a937b60ea3e69b97750be6bce93cca5664d05a5ef50f5";
      };
    };
  };

}
