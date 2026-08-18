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

  latest = {
    version = "2.1.235";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "83b8f806f6f2eea316cfe246628e6c23374711d868f1fd0409db551b877b7748";
      };
      "x86_64-linux" = {
        sha256 = "bfcf0ae2dbf94b2b6a106074aabf3938b9a10889c3b678e4cb5a00c03274d5d5";
      };
      "aarch64-linux" = {
        sha256 = "cff9592faa292db0f6ac21874f151b8c3d44e23bf0ab9fd1bcca95edc3469549";
      };
    };
  };

}
