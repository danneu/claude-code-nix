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
    version = "2.1.173";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "235c1bacdcc7f9d8d92368c95a0c66c26fcac98f878f21b10c73af340bc331ab";
      };
      "x86_64-linux" = {
        sha256 = "cf7ea194e1748932fa30f180eaa9f56f9a7039dce370302988c2926629b2a219";
      };
      "aarch64-linux" = {
        sha256 = "cc593dfc263f707ed222e334ff5c12a9addc24abc206768962f9d063b2fd7ac9";
      };
    };
  };

}
