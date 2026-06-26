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
    version = "2.1.181";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c4d833b04606cef9b6eab3ad255ed2e1448f87dea2bc00ff5acf77b57df6e94d";
      };
      "x86_64-linux" = {
        sha256 = "35ffd4e9d9a86395d0ba4e05f8b23bf098bfeab95e97deacd6537909d1324e9c";
      };
      "aarch64-linux" = {
        sha256 = "1393f993533e08d5c96245504750a7fcfe37490a5f44eec35b0beac3d709dab9";
      };
    };
  };

  latest = {
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

}
