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
    version = "2.1.223";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fcbe0b8d47570c501302dd1ad31cc26ac2810f022c45fa253936a6961dee32bf";
      };
      "x86_64-linux" = {
        sha256 = "98226474f802e3094d6a86c5ade8883c16206d0fcb5c400b7401c800063e99d7";
      };
      "aarch64-linux" = {
        sha256 = "60e83d8db0e894d0e54413e5e7daa256d180db660f51e139a51b614fc30cf3ac";
      };
    };
  };

}
