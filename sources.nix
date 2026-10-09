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
    version = "2.1.296";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c9b5341637becbd423ddffc5b254afb645682a3868cb708bbc6cc0e7bb419937";
      };
      "x86_64-linux" = {
        sha256 = "24972e3bc859fab2b46ed4c1e51f7d6130f06d3bd550811a114640de3370d0de";
      };
      "aarch64-linux" = {
        sha256 = "f1f6e96e0d8342b9dbf41d7e88255397a6a52ce3d8736ad6a4c6b59c9b62fefa";
      };
    };
  };

}
