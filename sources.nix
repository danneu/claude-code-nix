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
    version = "2.1.278";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bd245662fb8a0e321b3bf133e930371d6563c387527885f30b2613aef3ba14d6";
      };
      "x86_64-linux" = {
        sha256 = "5c4735937844e84f8a93306e841a5b0e12252909b07870f789b190468da147ab";
      };
      "aarch64-linux" = {
        sha256 = "7de6cab134e48321148e30182c98614118e8f4666819412bead45865190b34ed";
      };
    };
  };

}
