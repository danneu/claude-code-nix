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
    version = "2.1.206";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3197aba4442dbd5b3df42b6f35e6d7bd03b5e48ce18b7a3c5c6f5f8c28e03b7f";
      };
      "x86_64-linux" = {
        sha256 = "d131494be407ff56a62f4e99a96ba60102002d01e3b6b1494db16bef4b7f060f";
      };
      "aarch64-linux" = {
        sha256 = "cb8ccaf4ae6beb558747227a362010c6b32b4f4a5868c3a7e96aa9972fc6ef58";
      };
    };
  };

  latest = {
    version = "2.1.218";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "71abaff59312c9a9b6a1d818365048b42e4e95cc521a823660eded3e0880d9b7";
      };
      "x86_64-linux" = {
        sha256 = "e12071751a9336b8af1012c103358ff04ac18f9aaff4a738cff7ba5cdfaf63f2";
      };
      "aarch64-linux" = {
        sha256 = "295fd30481bd03b38450fdec2a6e25bb6472c2074f04b0c4a566cd5988f230bf";
      };
    };
  };

}
