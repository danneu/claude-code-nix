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
    version = "2.1.238";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1c196c456373b57818ae87df84aecee96cb659448c0d6a6bbb401ac5758431b2";
      };
      "x86_64-linux" = {
        sha256 = "0933b286cf94e1b2504b35ac165ab76b8f822735d53371c56393988c23040d58";
      };
      "aarch64-linux" = {
        sha256 = "28d736120a6b14c5eae1ad1470e73371818c9c2fa41e0b3c7040207aa2d4edee";
      };
    };
  };

}
