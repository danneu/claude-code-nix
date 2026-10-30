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
    version = "2.1.308";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ca923c86ac84b30574a82331a05b6e066c27477a926ceaffe46a845a33e4dd37";
      };
      "x86_64-linux" = {
        sha256 = "356733f185fa988e6bf3aa9a555269fdd167982a2e2a80d3c8a78037bb92ad58";
      };
      "aarch64-linux" = {
        sha256 = "fdd22e6cbb734d580f5664c48df4294eeec850218ff07f186f9af30426396ee1";
      };
    };
  };

  latest = {
    version = "2.1.314";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "21d6e7b9a6f07b4cfcb7df13760b3b72aa25e084e13a5354413382987ba832ed";
      };
      "x86_64-linux" = {
        sha256 = "4487042b4c4f5d88d4568f68ae98aae0b1ffae58864cf57fb868641bc5f84594";
      };
      "aarch64-linux" = {
        sha256 = "a66c0a8f5d0c87a439953d797985192bbcbaefbce2e0d7b2eaa8df30ef0f3ef2";
      };
    };
  };

}
