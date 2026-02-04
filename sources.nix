# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Channels (both native and npm):
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.19";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d386ac8f6d1479f85d31f369421c824135c10249c32087017d05a5f428852c41";
      };
      "x86_64-linux" = {
        sha256 = "4e2a1c73871ecf3b133376b57ded03333a7a6387f2d2a3a6279bb90a07f7a944";
      };
      "aarch64-linux" = {
        sha256 = "8c4b61b24ca760d6f7aa2f19727163d122e9fd0c3ce91f106a21b6918a7b1bbb";
      };
    };
  };

  latest = {
    version = "2.1.31";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8ae572cf525b2eec2da17a9100355413c4d59a43c124733e5cf1356dc50a576a";
      };
      "x86_64-linux" = {
        sha256 = "ea0da67ac8554a11bdf1da9659ae2a29b497f3e4a36ba3e776c68b7a65f52fea";
      };
      "aarch64-linux" = {
        sha256 = "0999b04ab563343c56ac1b8c335927aeab3ea3402d5bd85e061e6e0cb3226c26";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.19";
      sha256 = "1b54nbbr4w4gsv4x7nzysvm836dzw9v4i2my2rrz8mi4prrmcwpj";
    };
    latest = {
      version = "2.1.31";
      sha256 = "1l8ivy79li1a1cyailp1cdcd91fgicfxwm42ymzr0wxx511xr6k1";
    };
  };
}
