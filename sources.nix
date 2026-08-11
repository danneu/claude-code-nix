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
    version = "2.1.227";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7432511ba3be818e01f23f6eef8630d214a8b618451e188c3c7d61a987eef6c7";
      };
      "x86_64-linux" = {
        sha256 = "6832dc3f1797b890b71116e5f2dbbf9a83fd3d0498c235b4b0f9cd0e6e499ad6";
      };
      "aarch64-linux" = {
        sha256 = "db47335532cbcab67a4b3ab16d8f3f77976bf85d53c7d79f8296538aa22bfce6";
      };
    };
  };

}
