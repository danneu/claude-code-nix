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
    version = "2.0.74";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4e25eec16cefdaf0de6f37d6b2417195996bd7bb91958f3712513e8e8e15681f";
      };
      "x86_64-linux" = {
        sha256 = "43065ff86a1b952225e42042bf4dfe9f6b72ff8ed91686a23add5396b1a11e80";
      };
      "aarch64-linux" = {
        sha256 = "04922b072d663bce236fdfa04b29b363ea6e144e5fae79e77504d38d902b0780";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.0.74";
    sha256 = "0accjpr6vj42ki8nmjxc120miv2lddl878fbjn175djp50mn5gc1";
  };
}
