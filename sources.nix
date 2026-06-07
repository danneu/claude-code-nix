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
    version = "2.1.168";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "377f0ecedba8246bdabdf312ce8b7cc8ae1160997b26f5edca352a4a8d61dc78";
      };
      "x86_64-linux" = {
        sha256 = "e2f7cb50442bdee21bf2686ef3725a6af187a204e46c4af5c12d0f6d76326485";
      };
      "aarch64-linux" = {
        sha256 = "40d50e7c45742aaa3707fa3628d7f765c55ed503108b6f100513e38d32477aa0";
      };
    };
  };

}
