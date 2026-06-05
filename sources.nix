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
    version = "2.1.165";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "19ed536dd0e94dade3f8c49c3c6ddeff22b06f5d5c86b30f1c88eeb9a04f45e5";
      };
      "x86_64-linux" = {
        sha256 = "d34b0caadd25eb82d8e08ca103b648291b4defef53193f572847a736e2aaf4d8";
      };
      "aarch64-linux" = {
        sha256 = "ff2e060827f9f0214a77133206c4539a6477ec1f4fddb492b02255a0679642fd";
      };
    };
  };

}
