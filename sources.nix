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
    version = "2.1.197";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8cc0c4d1e4eb1dca3b0cc92ab02ee3505de764e023f8c901761c167b72041fb8";
      };
      "x86_64-linux" = {
        sha256 = "f54e69cbc89b2da61a415700af7ff52a147e862517d4f1b0eecf768448cf7f83";
      };
      "aarch64-linux" = {
        sha256 = "fb48473c467c27615ac799a754f4ef0b68c363e4596cefbb59c3815d51a0cc8a";
      };
    };
  };

  latest = {
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

}
