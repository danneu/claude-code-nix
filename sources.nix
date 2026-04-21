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

  latest = {
    version = "2.1.116";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4ecfb5b5c30585d0a3d5b5ef802a39804ddc33a63012ee0d4aee4d4e3db46eb4";
      };
      "x86_64-linux" = {
        sha256 = "0d1aea5ce056a5ce491da7e9bbe63f992585e5c24852f023a07c8f18cf292cc5";
      };
      "aarch64-linux" = {
        sha256 = "dc3854c271a5323da9047f90c5b1a5bdf78ac03474eb45c9c26b84ecf9f2134c";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.104";
      sha256 = "1xyjiz273hh8zam1zp1i4xdhiqhbizqc2mgjmgn5zsdqvvd58hf9";
    };
    latest = {
      version = "2.1.116";
      sha256 = "1wgpcxb6wxjb269zlypk9wbfncdcd2i09w71n55p9gxs8jpvwsy8";
    };
  };
}
