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
    version = "2.1.267";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a681f3008f0050029aeebcab3af51bb6a55ddeb625a3af3141a4416d43cd2558";
      };
      "x86_64-linux" = {
        sha256 = "0399c793ff571d5946ef923d80b4f330d05ac4b6842a6b0775468f5d389403c0";
      };
      "aarch64-linux" = {
        sha256 = "226a4e009574044a18bf5495f127806b2a1bfcbf25b3c01608705fafee95fefb";
      };
    };
  };

  latest = {
    version = "2.1.280";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "387a5c5dcdbb815085edf0baf79591f9d8894efe922bceaf3d75b1b08055229d";
      };
      "x86_64-linux" = {
        sha256 = "1e08503dbdf3c2cb0d706d32f3408277388d1c76ef108673e8fe42c1b322925b";
      };
      "aarch64-linux" = {
        sha256 = "92f2b4fd05d0bdcf7b9a0d4e0ecef4a1e4b368b290cd8fd07cff9a50013f45a2";
      };
    };
  };

}
