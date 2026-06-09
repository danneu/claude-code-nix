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
    version = "2.1.169";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "86d8b820ad7eed50e50a130706d3dc5ef70696f91194de1b3897a842182afe3a";
      };
      "x86_64-linux" = {
        sha256 = "cf066bf360cbf7b51abeb8cb230012fc0f2fed4253b2ce305de48ccd6d49a39c";
      };
      "aarch64-linux" = {
        sha256 = "341072395844b2b6d2846d8d61d551752b12a44433c920d0cc7fe6e7b5692a9b";
      };
    };
  };

}
