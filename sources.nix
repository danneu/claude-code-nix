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
    version = "2.1.141";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31ac95bb19a33b1d0cddd3f3ff594bf8bfd2be5051cd2af7867109641cab705e";
      };
      "x86_64-linux" = {
        sha256 = "832be26e8f15b2ae99e520a22b034fc4bfad1cb5b84de6b706487072c56bb42e";
      };
      "aarch64-linux" = {
        sha256 = "dc931e24f62afbadc8dc68115278b08493825a3ed1ea753d587077181a6cc63b";
      };
    };
  };

  latest = {
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

}
