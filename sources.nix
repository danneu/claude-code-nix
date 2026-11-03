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
    version = "2.1.317";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "09f153b46b5df9e8b3454716d682a91901de020cbca630f61dec1a015b32b5e9";
      };
      "x86_64-linux" = {
        sha256 = "eb224419e344575faa4a1f39b290b649425a10cd5ee2ef1d003480cd9ae57eb0";
      };
      "aarch64-linux" = {
        sha256 = "563a0d60ad0c223d9415768210997acb0f7134ea51dc3c238e88bc2e18ddeefa";
      };
    };
  };

}
