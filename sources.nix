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
    version = "2.1.239";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2b4f7aafdaa65bcc2335f56a4b276317837203f2c5587b1f2a17ca78ad14e36f";
      };
      "x86_64-linux" = {
        sha256 = "7de1b1576e2e0be73ce91c2b4dedf16a41058ea633b957a36fdc6044ddfc0f3c";
      };
      "aarch64-linux" = {
        sha256 = "66f202c9b52a13318aa7d55e180130fb95ced04af6dc46fd1ea823b598f35556";
      };
    };
  };

}
