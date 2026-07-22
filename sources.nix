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
    version = "2.1.217";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5840c777fd47115e9ca276e165563c6e121e7c7e2b4d86598e0025f8cc37de56";
      };
      "x86_64-linux" = {
        sha256 = "2630fc5dc6db61bc03f86b95daf47766e5ed5b61873f7bb7cfea764c5ac5a9ba";
      };
      "aarch64-linux" = {
        sha256 = "40c53507ac669c1d438366c19760c22f52748a06e50e0fc0e353d2cb73425597";
      };
    };
  };

}
