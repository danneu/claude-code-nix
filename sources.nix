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
    version = "2.1.108";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8d66163313976b0045b829e37eb3fcccb10ce6fd7e04a6db85d2c3915ff8aaec";
      };
      "x86_64-linux" = {
        sha256 = "1f641676eb086ceafd76a5f51ffb260b948fa1f6d77991d8cd6e480267dfff37";
      };
      "aarch64-linux" = {
        sha256 = "7bef1f7dcf64a221fc66571a176ca6206088bec48613a46cb4fa6328169c0bd1";
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
      version = "2.1.108";
      sha256 = "1f6rw008n1m4pjy7qhnywya50bj2n5ms7ygd7q20imypc2cb485y";
    };
  };
}
