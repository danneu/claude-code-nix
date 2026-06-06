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
    version = "2.1.153";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "449d9c89d7a63b1d427d912a7bd6e6f23f9a7b363866697c9fa9a0012546b254";
      };
      "x86_64-linux" = {
        sha256 = "214f603f31942162dac9a65f18d43b3ac646ae215240fad481c4aad6c60f2e38";
      };
      "aarch64-linux" = {
        sha256 = "6277fbbea72228a069e4719fc3e5fa36f16749247a2321c520dae93e83e92d9c";
      };
    };
  };

  latest = {
    version = "2.1.167";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fb3cbe9200b3eeba7ae06ee43fdb4b4b2b231d5fa8040d0e47954a7f374d1530";
      };
      "x86_64-linux" = {
        sha256 = "d6d2995bfca3f8539d9e9aa513ff43c3daa0d556d6d1af07c6df681e050e522c";
      };
      "aarch64-linux" = {
        sha256 = "b8f383df1dca557dc8fb817e4e76335639f94a0a8c7b803ca2f5aef12d373f09";
      };
    };
  };

}
