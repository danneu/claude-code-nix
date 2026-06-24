# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.179";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "af2a2d0cb99b0e8b094bc5dbe114ed2d5b2d27ba440987ef6f2f209da9954253";
      };
      "x86_64-linux" = {
        sha256 = "6d8422de5ac8ac2077b20e2a6307083f85609aaf45f8c783ec2f7d71e8781e70";
      };
      "aarch64-linux" = {
        sha256 = "25d2eba2351df153f872a8e19289f5042a26b430cd446564bd92a0dec5d681cd";
      };
    };
  };

  latest = {
    version = "2.1.190";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1fa59529c233914fdd9d42816a74ecf300eefa14c3d118d4ecba2f0f16fc5741";
      };
      "x86_64-linux" = {
        sha256 = "0684e28517cc785ab8d19feb5dad3381eab4abc97bf6fce07bc534dc88040b27";
      };
      "aarch64-linux" = {
        sha256 = "e7305203e7d78a6bfecb94f7973b0ee4a71a3ba67c8028c98b293cf571900b68";
      };
    };
  };

}
