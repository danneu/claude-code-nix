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

  latest = {
    version = "2.1.133";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d38f34444911c86c73f32beb82821008b26be889fa0d0caf7085580cf5737e14";
      };
      "x86_64-linux" = {
        sha256 = "d0ddf0aee6e4426a705719e5d4716e3ce3cb38f9a5fe06eb6d5ffcef6c98832a";
      };
      "aarch64-linux" = {
        sha256 = "dcc7275f9198317e073c329abe174827604a801e9bfb577a00d86efcf4f8167c";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.123";
      sha256 = "0bbasdij5vhv2y7z4176fgr69cq416mmiblf1fvjhmxg81lgkawp";
    };
    latest = {
      version = "2.1.133";
      sha256 = "0p736lpfx27pjy8c262vbrfp727amq0ln9adsm7rix8bzs7vswbb";
    };
  };
}
