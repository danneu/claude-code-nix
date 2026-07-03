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

  latest = {
    version = "2.1.199";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e3cb61abc8a2ec7b98976cee1ffdde5a3fa755c9990bc8d688cd89290e0dcec0";
      };
      "x86_64-linux" = {
        sha256 = "b31dfd5e3dee23b51c42e0d8ddb405148978237d3aabc8cbbf77c5cf83367e27";
      };
      "aarch64-linux" = {
        sha256 = "14851b5170b154b01baca09bba970172e70cdd768b5a012bf347ba0f594b4ad3";
      };
    };
  };

}
