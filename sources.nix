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
    version = "2.1.327";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "76d48205c926c8a6978cfc2171b631bcd01e20bbadd085638bb2ec57bea91c5b";
      };
      "x86_64-linux" = {
        sha256 = "343c744baa14bfd38286a7cb90871051f04379956da6c5b803a9e66019a76ac9";
      };
      "aarch64-linux" = {
        sha256 = "acf0ef2f9da8d5ab08f193f007e19a06cbfb608b96a2f1f758d63a92a386cff8";
      };
    };
  };

}
