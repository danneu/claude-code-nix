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
    version = "2.1.245";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9f7c2260251765a18d0b35198669dacc1912f6e8129a3b01f6b58d93365ff1f1";
      };
      "x86_64-linux" = {
        sha256 = "16ad2b94deaf7b29abed966d981c9991a47af0420f5be8ed4a3f83bea9f678bc";
      };
      "aarch64-linux" = {
        sha256 = "d0da299303d710a7cc5cdece9629958f5128ce1a727e15463c651ed5cf385c7f";
      };
    };
  };

}
