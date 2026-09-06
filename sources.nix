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
    version = "2.1.263";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ef5d2909c8af49f31ab6d5487e90316777bc2fac170adfe8160716caa8aaf4f9";
      };
      "x86_64-linux" = {
        sha256 = "26d020351e8112f4006790f3cfce43b4c9df0c1bb1d0e542364d64151b81d5ba";
      };
      "aarch64-linux" = {
        sha256 = "7d25d7c8ae6c6e009cc7dae4e817f674179fd31fb7761bcd56fee4c2902b4c03";
      };
    };
  };

}
