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

  latest = {
    version = "2.1.243";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1f72dc749e59d1e8b1aa0ecdc2b3a65e599698af9087be4ac1054f57602c304d";
      };
      "x86_64-linux" = {
        sha256 = "4b0dafeedd0b469c41988e200036fd773e7553ba960349c9f02a82c6d1f2ba27";
      };
      "aarch64-linux" = {
        sha256 = "de5c21631e079b78c0b98f02a6a556acb37908425f4b80d7348cf3cd86ea5236";
      };
    };
  };

}
