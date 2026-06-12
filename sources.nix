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
    version = "2.1.175";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6b75bf132c866ed409bf913c318ca32011e73ffb12d3cd67ecc37bc4ee9ec65d";
      };
      "x86_64-linux" = {
        sha256 = "4fc72fa6090c9a03f1850e1b1ccb3d6806bf802b67e3cb9dc5f2ced4b7ed5ca1";
      };
      "aarch64-linux" = {
        sha256 = "360f1f6f43ec26d9bb6e20e487bf44b753d9b8407e89e74bfeeb79707399f435";
      };
    };
  };

}
