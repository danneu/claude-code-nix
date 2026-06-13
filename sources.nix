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
    version = "2.1.177";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "eb0730351be2f02b482b1855870f5877489085aac86b0c4c1db4e458d9e40ed9";
      };
      "x86_64-linux" = {
        sha256 = "ff41753634b20c869ef6a32a20863521b33d4186ac0d6a49379ab48a48395ee7";
      };
      "aarch64-linux" = {
        sha256 = "baf3926dc166215772f959e367da9784ff4c75157aaafe4524fdc79ebff984b1";
      };
    };
  };

}
