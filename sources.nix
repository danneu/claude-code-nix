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
    version = "2.1.172";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3c31f345575bf6f261c7e19981f6491bb93eeb0ffb499e95033610a7184831ce";
      };
      "x86_64-linux" = {
        sha256 = "c0915dd1691d569aeebc7978b12e029718323685ec0dd4b5c6a453108d6be1f7";
      };
      "aarch64-linux" = {
        sha256 = "4ef0d735bd4180c3bffc381f6dc38df979229a8637d294be751c6043d93d12e1";
      };
    };
  };

}
