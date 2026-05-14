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
    version = "2.1.128";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1a56ae4cd171ba7839fc2b03d558022ffaebb5693be532d8f3c344731063e979";
      };
      "x86_64-linux" = {
        sha256 = "770c81373ad42970ef576676da78d6be60413f4ade23abadbf1343ca0809bb3e";
      };
      "aarch64-linux" = {
        sha256 = "e2a31879b7433f658d915e6716249f10b913b467873950e8e7e066ba7c4d96e9";
      };
    };
  };

  latest = {
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

}
