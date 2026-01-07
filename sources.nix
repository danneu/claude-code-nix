# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Native channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)
#
# npm:
#   - Single version from npm registry

{
  stable = {
    version = "2.0.67";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4b5709f0b799650445da3df46025f600f6ddcc65f2c9857d2c83eb986c343ff0";
      };
      "x86_64-linux" = {
        sha256 = "b2a12279d5df3814f59000682a571edb771b73e89b4bd894101f01e3726726f3";
      };
      "aarch64-linux" = {
        sha256 = "7ae2baadcb6db64b26d4edb277aafb02a42be82f0da4a193289271852c9a96c8";
      };
    };
  };

  latest = {
    version = "2.0.76";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b76f6d4d09233e67295897b0a1ed2e22d7afa406431529d8b1b532b63b8cbcbd";
      };
      "x86_64-linux" = {
        sha256 = "5dcdb480f91ba0df0bc8bd6aff148d3dfd3883f0899eeb5b9427a8b0abe7a687";
      };
      "aarch64-linux" = {
        sha256 = "f64a994c8e5bfb84d7242cebbec75d6919db2ee46d50b8fc7a88d5066db193f9";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.0.76";
    sha256 = "1ndrj51yfgkp1xgph5r3v6n946rlamj3v0y6wk4114wfzwv9k8zw";
  };
}
