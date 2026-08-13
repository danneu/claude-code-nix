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
    version = "2.1.231";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ba790279cab6ef77b713864d4bf5f764fcea87d3a3eb7591a41f741e45212b5c";
      };
      "x86_64-linux" = {
        sha256 = "47a01daebf794f6c86c13d1875ad6e5be0627029ad8600731161f24018ecde5b";
      };
      "aarch64-linux" = {
        sha256 = "4ee7c484b11dece6521aa2173a19ea913428c1c78599186d62559d2d2aef4e32";
      };
    };
  };

}
