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
    version = "2.1.287";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6eab8333fe2121553100d8f40bfada384a3e989b94f947e18ba6677a6fcb41ea";
      };
      "x86_64-linux" = {
        sha256 = "3920489a5109cff5786a1a392c25277408ff22bc796d5edb9c16a60e5a1718f0";
      };
      "aarch64-linux" = {
        sha256 = "e4daf793d1e74fb0d9874dd09e98690bbfd7be515f78a87fd05b9e2b4bb33b03";
      };
    };
  };

  latest = {
    version = "2.1.299";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ba5ab7b8c195fa03ab8d5bf3915c76153b576a2c40e79a5c46e265e7ed9744b3";
      };
      "x86_64-linux" = {
        sha256 = "2d894a4b1bfaaa9aab72aeff7803e3c73bc2510f279a171f6b8f59f72d17d077";
      };
      "aarch64-linux" = {
        sha256 = "4cd5ab006b49dc12a247fed4dbc42a925ad1aea1e711d9aa24587d285ee87c2f";
      };
    };
  };

}
