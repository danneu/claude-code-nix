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
    version = "2.1.201";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a0852d76afc47b30f5cb0b7625ec9a7714cb189f2eeef6c28c77e2be954fb7fd";
      };
      "x86_64-linux" = {
        sha256 = "a34809a6839fdefff21b9347d7fb5b6b58e6a9cc208a5e62853f29c83eb107a3";
      };
      "aarch64-linux" = {
        sha256 = "86b2eab34d382c7b428fc2e9f4c97f04e46805e950582472a13eb7d48de60516";
      };
    };
  };

}
