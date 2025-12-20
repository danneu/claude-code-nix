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
    version = "2.0.75";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a96eb18218e112486b7ecebd1551d927ffb310ab5fb06d2e8db25fb31367537e";
      };
      "x86_64-linux" = {
        sha256 = "62160f8766681d8c933e9133398d3dde6ad0df08038881a66eddb993b4b6a33f";
      };
      "aarch64-linux" = {
        sha256 = "681fbd1a84b2de883dc954441693766b43ea4faafb3e72b88c99a33645cd3507";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.0.75";
    sha256 = "0ql37g8ph56d0953c89xh90qskxf2bcpr234n4fx5hdzn7wdy341";
  };
}
