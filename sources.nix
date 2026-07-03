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
    version = "2.1.193";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f7513a30385ad9019c237226fd6ec46508b3062ebefca8aedbe397d111a818ff";
      };
      "x86_64-linux" = {
        sha256 = "c9f04d929f18bd9a101f3897f27de4e1e0f15ebe8400d4aaf02983d73dd66b1d";
      };
      "aarch64-linux" = {
        sha256 = "39454ce62e795eeb4871a81f6453cda96e926e2db9a4dd41d0ec1b60b0153448";
      };
    };
  };

  latest = {
    version = "2.1.200";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e6fd52c0c72ff83663bf3cbfc833b45faaba2b9a9952863279dc3cfc1a0492b6";
      };
      "x86_64-linux" = {
        sha256 = "26e42a3268979f0c5a3b6c0f375b15dd7decfaae4bb02774390d6a23f4cd51ad";
      };
      "aarch64-linux" = {
        sha256 = "434ab85cd215ef7d5cd7afc1d02c0a95c0521357d8819f70ca77b6b4b1c5273d";
      };
    };
  };

}
