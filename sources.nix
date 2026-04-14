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
    version = "2.1.107";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "af95a2929cea1ac50feb32ac76bcaa9bf4791fdd25c3186ad7b514da0788deaf";
      };
      "x86_64-linux" = {
        sha256 = "8abe3909c55b3afafa8939d28c2cc2fcf73ba9424a46b4f435bbadda7e0eb00d";
      };
      "aarch64-linux" = {
        sha256 = "b3f1d3acde0a247c67a93638208911dd2f676743d16cb3f9bd3987ffb3498a00";
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
      version = "2.1.107";
      sha256 = "1rs231b70c29sn3rgpn34g3rxw7pb2brp2bkk1kxznhlvjnl4zs4";
    };
  };
}
