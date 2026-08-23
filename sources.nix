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
    version = "2.1.241";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1495eb7c42d3b4451f5f1cd38b6d498d22a4a38c802bc2be5c1cf1795e64820d";
      };
      "x86_64-linux" = {
        sha256 = "0771bd866cff82b76581fc0499f6529e1a36845078f144f8c81dccb3bc7037b8";
      };
      "aarch64-linux" = {
        sha256 = "2db0cb893ebed8ef8aee46656da45bc6801fa2586293dae64abfa3ade894a2fe";
      };
    };
  };

}
