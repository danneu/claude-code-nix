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
    version = "2.1.223";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fcbe0b8d47570c501302dd1ad31cc26ac2810f022c45fa253936a6961dee32bf";
      };
      "x86_64-linux" = {
        sha256 = "98226474f802e3094d6a86c5ade8883c16206d0fcb5c400b7401c800063e99d7";
      };
      "aarch64-linux" = {
        sha256 = "60e83d8db0e894d0e54413e5e7daa256d180db660f51e139a51b614fc30cf3ac";
      };
    };
  };

  latest = {
    version = "2.1.232";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7b39c1588df919d001dea3ffd5651adb682f2451b5a0e18d42d4233296b53cc7";
      };
      "x86_64-linux" = {
        sha256 = "61d23f8749136907d586d5b11831ea8a5234d4c1dea40a5e55c33b52e204c6d1";
      };
      "aarch64-linux" = {
        sha256 = "20797ebc644dfc47a69865c46d5cf702c7dbedd48d4268063b8828ebd55b39d0";
      };
    };
  };

}
