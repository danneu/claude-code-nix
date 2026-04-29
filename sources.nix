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
    version = "2.1.123";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "44597dff0f1c11e37c1954d4ac3965909be376e5961b558345723357253bcc90";
      };
      "x86_64-linux" = {
        sha256 = "5a78139b679a86a88a0ac5476c706a64c3105bf6a6d435ba10f3aa3fb635bdb2";
      };
      "aarch64-linux" = {
        sha256 = "825c526035d1d75ff0bc1eebf18c887f98d07ea49ea80bd312ff416fe61a39b3";
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
      version = "2.1.123";
      sha256 = "0bbasdij5vhv2y7z4176fgr69cq416mmiblf1fvjhmxg81lgkawp";
    };
  };
}
