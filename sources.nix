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
    version = "2.1.92";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6d1b9657727dce81332b3cda11bfe0a8c83e2392e3c062a31022e10b0e71cdd1";
      };
      "x86_64-linux" = {
        sha256 = "e22324514967ff2d5e9f91f0ee37e4675bf8b6dfec27fafb19cb25cc5b23fcaf";
      };
      "aarch64-linux" = {
        sha256 = "08deb3d56477496eb92e624f492e25b123f4527dd5674f71afff58a48eccd953";
      };
    };
  };

  latest = {
    version = "2.1.110";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f45cb1b0765f9fc592d36d7153f6c1ff0ecfc3ae9cbc997eaff2b0cd25bff9f6";
      };
      "x86_64-linux" = {
        sha256 = "7ecdde57b002d5927e704dcbce04eaafb923644d315259ba2e6ac6f0712163a4";
      };
      "aarch64-linux" = {
        sha256 = "ff5bf0372d1700cfb4d232021c6e0d417205c16392492da0fabc6b509eeee92a";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.92";
      sha256 = "0iwkfjb3nq95b9iz1hng2i3vdcdb2aph35jmaccagcz62vwqby7z";
    };
    latest = {
      version = "2.1.110";
      sha256 = "0n3ayyavi1nsl6fj1g3wjjsrvb0pckzrq09vw6z96y5jwax8vrm9";
    };
  };
}
