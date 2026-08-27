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
    version = "2.1.247";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5086b9b64d8bb842e1f599cdd3767ab08c6b2266e462fcc5686ae4b019cca8f7";
      };
      "x86_64-linux" = {
        sha256 = "5fb321bf417ffc5cd4e3f36e7c9c7e029bf47aaa36d5621db979fcc5e6eabe15";
      };
      "aarch64-linux" = {
        sha256 = "a68bb633f85e4a0e73465952ea624cf18992c3fa4db615feeb942ffad57d082a";
      };
    };
  };

}
