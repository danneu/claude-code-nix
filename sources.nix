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

  latest = {
    version = "2.1.122";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4b01075bd923084fe56124bfb647f5eca98c2b1fa34cb039d2e75ccc84af4b86";
      };
      "x86_64-linux" = {
        sha256 = "5525f482dd1fa6e3fe5fa48ae7a82dd9e2db7293af165a56c95fcc7899cd8468";
      };
      "aarch64-linux" = {
        sha256 = "ec608f447cf8d8a323e174a7b95f664d4835a77562c31f8562fa35b01e326d07";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.116";
      sha256 = "1wgpcxb6wxjb269zlypk9wbfncdcd2i09w71n55p9gxs8jpvwsy8";
    };
    latest = {
      version = "2.1.122";
      sha256 = "1irjrck5pn0wpzrysrsnaqs9ndd7xfhmggs4wxniq39flvx1w408";
    };
  };
}
