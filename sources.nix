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
    version = "2.1.216";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d01b49210d72ecbe277a2665d104bacccddf2d22185be99446d2929e0edfc48d";
      };
      "x86_64-linux" = {
        sha256 = "74deca45220b8080ec75ab099bd5a5980e41a2b5879846a008fb115d436de085";
      };
      "aarch64-linux" = {
        sha256 = "9e3a6aecc5164f607e1183aea2092c7d7705d146e504a6207df291776996a8ea";
      };
    };
  };

}
