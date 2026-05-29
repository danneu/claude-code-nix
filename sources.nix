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
    version = "2.1.148";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f4a1860d3d9b01653dde4183e2f1216ca9e0c1a404dd63caa4edf07c904102aa";
      };
      "x86_64-linux" = {
        sha256 = "3b38836a1801a6397f8431c6a62b127ce47e3e9d103c1a700fca7f9c8ab5f8ac";
      };
      "aarch64-linux" = {
        sha256 = "b53c29b1fe003372636048c16d57a74f1ca2c57d8413dd5b14e2ca77710823ed";
      };
    };
  };

  latest = {
    version = "2.1.157";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "10f398510f0e6bd7c677ee25cfc698601bf8b1ec89658f823fa23a2f80a8a73f";
      };
      "x86_64-linux" = {
        sha256 = "3215501f8cfee9a70601c2fbc2c84e9d020e4e7148a0b8b8264f4d8c026bc64b";
      };
      "aarch64-linux" = {
        sha256 = "57223365cbe16546fb4c0e28912b3f8cb61cac2b5ccca84b71719d9f133286bf";
      };
    };
  };

}
