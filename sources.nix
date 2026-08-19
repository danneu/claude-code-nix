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
    version = "2.1.228";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "43484b1352cef03a08346f36ef0437755b1aad646ab9313ce187857b794b7247";
      };
      "x86_64-linux" = {
        sha256 = "d535985e6941a3eb00179ccd7f52ceb0c6623a0305a518ebc4e6514f84a94c99";
      };
      "aarch64-linux" = {
        sha256 = "2664006219497bf7021ac43156519cd42eda64ceb2a66f434ecab83e7831f942";
      };
    };
  };

  latest = {
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

}
