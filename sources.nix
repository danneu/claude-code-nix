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
    version = "2.1.85";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bad5882c5fcd97e39f8c2f2b9a4c3fa3890d1a39eecaa94a16fd75d6701ad7b3";
      };
      "x86_64-linux" = {
        sha256 = "ff0b23dba11c97a53386c61ebe47d46d768a8ad33f98c7d22186c9a63f179f4d";
      };
      "aarch64-linux" = {
        sha256 = "b23709a394d1e3d977f9f3025bdaa1b1285715d10a48957e587952d8ef3a27f4";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.85";
      sha256 = "0dqqsmjcii615vln8m2vcklkxsv9fn60jdrv97qg9fy2h8d768wh";
    };
    latest = {
      version = "2.1.92";
      sha256 = "0iwkfjb3nq95b9iz1hng2i3vdcdb2aph35jmaccagcz62vwqby7z";
    };
  };
}
