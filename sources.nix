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
    version = "2.1.220";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8addc857f3fe64d5a0368af9ee50321b50afb4a6918ba3ef018ab84f5dbbe081";
      };
      "x86_64-linux" = {
        sha256 = "674f61f20ff306f3100cf9200e4c36c4b70278b5bef2884549819b942a89c863";
      };
      "aarch64-linux" = {
        sha256 = "159e4a51d796f3bf14677577100f7efb845611b1ceaf0c30cbd8d4650d942185";
      };
    };
  };

  latest = {
    version = "2.1.222";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c66a6cc6fa2e8145bb1a6e77831f2caf4b83690ff04650500dfa6e2c05ca997c";
      };
      "x86_64-linux" = {
        sha256 = "10caae8f22b915c26bfff0e013a4d45608c4f1ae287583626569156f447730e5";
      };
      "aarch64-linux" = {
        sha256 = "a04be0a8d7fe0259571ab7411d51d85658d71a4a26ce62b60c908290372e6016";
      };
    };
  };

}
