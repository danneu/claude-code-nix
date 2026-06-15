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
    version = "2.1.178";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "473495d0c15d6616cd0870480db5eb8aa0402fe4f8ead3277a1b521e94110309";
      };
      "x86_64-linux" = {
        sha256 = "17ed1a983a49404c4673de286419a8fd6617c92440a2e0f789bcc413a3b14de1";
      };
      "aarch64-linux" = {
        sha256 = "8e57484f5c08093117cfe6225529f8977877eea04bb3463f4e228aa7438349b3";
      };
    };
  };

}
