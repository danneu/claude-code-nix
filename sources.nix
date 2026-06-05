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
    version = "2.1.163";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c7582e926e8fe459dbd9743f19ccb75500e3b455c722902d1aa587a74fb1fa7c";
      };
      "x86_64-linux" = {
        sha256 = "5dddcb2c091da60cf9b1bef782e6c78a7fada2f2cd3db4f131c9ebc2478fd447";
      };
      "aarch64-linux" = {
        sha256 = "ca0010a80e3c4749e59c6e8429ec4a4e2ecbaafac36d3535636e04369bbb87c0";
      };
    };
  };

}
