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
    version = "2.1.176";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f3f1b0c098510bd5d472b15f5541bb261f5939aeb52e488760bc53fb54c1803d";
      };
      "x86_64-linux" = {
        sha256 = "075bc326c19a5484c86f3ea8633cf4bf7e26ed72bf3529bc8b64a00db1c488cc";
      };
      "aarch64-linux" = {
        sha256 = "95924cc57a03d9b3b58b262aef7f6c8719653c991c82b6b8690c7a5422690d63";
      };
    };
  };

}
