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
    version = "2.1.240";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8917e01c99ea0ce6ed887a1729a4cda693c758fe542747be71756987b145c772";
      };
      "x86_64-linux" = {
        sha256 = "1386169da77de19a655f07a86ab80f5775983a50eb0c9c27a7daf16e7320322d";
      };
      "aarch64-linux" = {
        sha256 = "72be65c43d1db48e91abbe65254037f29fb7887d846a3890dcd4890b00265493";
      };
    };
  };

}
