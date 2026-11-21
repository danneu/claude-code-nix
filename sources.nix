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
    version = "2.1.323";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5432918d904a9b6afef7bb79d20df24d76052eabc1f41bceb84091d21f8889a7";
      };
      "x86_64-linux" = {
        sha256 = "604d29a6869409106b6a1110bdadcc8b72e8654a5a865d23258f938a696e348e";
      };
      "aarch64-linux" = {
        sha256 = "452dddff140b5caf00a5410333a3d6db82c73ea2dec74b1541fae18e97d47dca";
      };
    };
  };

  latest = {
    version = "2.1.330";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f7c5093b9dd6560d08af28bc27b123fb55091deae3180ac39df199522da86815";
      };
      "x86_64-linux" = {
        sha256 = "f390eaa0814e6a1bff74cbb47acb74cb9c89d30ced809fe0af5af00c7bfe8ebb";
      };
      "aarch64-linux" = {
        sha256 = "6016f90cac783e367fb1aa97c768a2efb94a0128a5b46b70fb3d8fcbbd9dd444";
      };
    };
  };

}
