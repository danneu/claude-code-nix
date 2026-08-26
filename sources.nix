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
    version = "2.1.246";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7b09f01cb76a38e0e3a7c47c5d698d382162a5ff26538fc778683770caf9218b";
      };
      "x86_64-linux" = {
        sha256 = "1a0a662dc1bb938eaec38545abce9a4a69113d7d7f7c5e1a553ea276617b906a";
      };
      "aarch64-linux" = {
        sha256 = "f98296e6e61c507589d1a973b262976b734700ec4e055cb64afdbf6d9a337db7";
      };
    };
  };

}
