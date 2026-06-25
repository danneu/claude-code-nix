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
    version = "2.1.179";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "af2a2d0cb99b0e8b094bc5dbe114ed2d5b2d27ba440987ef6f2f209da9954253";
      };
      "x86_64-linux" = {
        sha256 = "6d8422de5ac8ac2077b20e2a6307083f85609aaf45f8c783ec2f7d71e8781e70";
      };
      "aarch64-linux" = {
        sha256 = "25d2eba2351df153f872a8e19289f5042a26b430cd446564bd92a0dec5d681cd";
      };
    };
  };

  latest = {
    version = "2.1.191";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "99fdfb552a5260e649aedd06c024d0a4105b09cefec0bf67d558e017ee66c400";
      };
      "x86_64-linux" = {
        sha256 = "1038dba88bdf1b80941dc3e383e93b088325b00497329ac50da460c8786d5bee";
      };
      "aarch64-linux" = {
        sha256 = "1a31a7cbcfd784f8c073bfc8a0a1583fb6e93e60ef70b76d7fcf663ffed8949b";
      };
    };
  };

}
