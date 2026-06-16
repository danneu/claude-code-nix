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
    version = "2.1.169";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "86d8b820ad7eed50e50a130706d3dc5ef70696f91194de1b3897a842182afe3a";
      };
      "x86_64-linux" = {
        sha256 = "cf066bf360cbf7b51abeb8cb230012fc0f2fed4253b2ce305de48ccd6d49a39c";
      };
      "aarch64-linux" = {
        sha256 = "341072395844b2b6d2846d8d61d551752b12a44433c920d0cc7fe6e7b5692a9b";
      };
    };
  };

  latest = {
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

}
