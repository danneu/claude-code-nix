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
    version = "2.1.329";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8c1729568b19cdadedd0a978bf692f9f279ef554c8a333c4e132b94fd8725550";
      };
      "x86_64-linux" = {
        sha256 = "30e2724e2aecb1bf5dc9f3130901afb71c5fa229051c190a6d7ad9aff6378d6d";
      };
      "aarch64-linux" = {
        sha256 = "8489e2c7ba7846b4681b84e559fed4ed5bb265e129e21dc9de9e322157fb2bea";
      };
    };
  };

}
