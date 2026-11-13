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
    version = "2.1.323";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5432918d904a9b6afef7bb79d20df24d76052eabc1f41bceb84091d21f8889a7";
      };
      "x86_64-linux" = {
        sha256 = "604d29a6869409106b6a1110bdadcc8b72e8654a5a865d23258f938a696e348e";
      };
      "aarch64-linux" = {
        sha256 = "452dddff140b5caf00a5410333a3d6db82c73ea2dec74b1541fae18e97d47dca";
      };
    };
  };

}
