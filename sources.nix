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
    version = "2.1.237";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "338901351d4ff17495738c67fc3e12a32c1b506738ac5e012eb782d3d8b5be43";
      };
      "x86_64-linux" = {
        sha256 = "73975167f0108693cf6fd6614994781657ebb8456ebef5d247458734abfb3916";
      };
      "aarch64-linux" = {
        sha256 = "a701cfb6bb4703abc6f3ce47508c878ca8158ebdbeacd5c35c7d510c7bc70177";
      };
    };
  };

}
