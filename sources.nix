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
    version = "2.1.311";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "85d8c08707fcfd1e78ffa0204eefbc6ec9e4fe22f375fb2767ef85d957ed3161";
      };
      "x86_64-linux" = {
        sha256 = "86dc1fcc69498159eaf15f446613e847010f9036bfbbdffd4c49350be8489ada";
      };
      "aarch64-linux" = {
        sha256 = "2e2496c9a8065df93acb0fca2d341f59a6b8777649b2e025ab8c9bcd5eef61f3";
      };
    };
  };

  latest = {
    version = "2.1.321";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "abc9feeeca8091d51b623291e044cf0528c2f6b74e0c1d6ef671d52c73f7cd3c";
      };
      "x86_64-linux" = {
        sha256 = "426c33815ca6645a772f722fbff10dbf2cbdb124a8aeab733c1365dbf8bbf61f";
      };
      "aarch64-linux" = {
        sha256 = "6bea0633074627ba79328e00115ed0588c3acf906a8463612b25db696dbfd3f0";
      };
    };
  };

}
