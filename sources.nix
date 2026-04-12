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
    version = "2.1.104";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "185aabd6d16dacb01a6dd41fc8d8ae5ea78ac8a6a3683caa05b759c47b24de60";
      };
      "x86_64-linux" = {
        sha256 = "f5fe84d4b8a5a322b83a8ae63ac117adb143d2a9a0bfd73a201a5201d6423869";
      };
      "aarch64-linux" = {
        sha256 = "f0a79ec304334503a563c6d4618b0ea1fcbbe477a047dd3955e2078a3c5559c1";
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
      version = "2.1.104";
      sha256 = "1xyjiz273hh8zam1zp1i4xdhiqhbizqc2mgjmgn5zsdqvvd58hf9";
    };
  };
}
