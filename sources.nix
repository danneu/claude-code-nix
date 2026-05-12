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
    version = "2.1.126";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "87a1d05018ceadfc1fe616bfc10262b0503f51986f4af2dc42d1ed856ed3f7bb";
      };
      "x86_64-linux" = {
        sha256 = "fce96968d275161ff65a4c19fc6434efc6973d9f6d35dc3992a2ba0553cac18e";
      };
      "aarch64-linux" = {
        sha256 = "88a6dca613a40559f3bac8a946a2ec6e60a870b91938d3df93dcac1dec4848cb";
      };
    };
  };

  latest = {
    version = "2.1.139";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "aa8a0a39f2abbd9e09518eb7268cda105b8029620a38f5a5cbc362b65331c3db";
      };
      "x86_64-linux" = {
        sha256 = "c1800a0ae51b5a4c7b33be6a32d62b6169d93f6174119b2eeb6896cf0cd5d7e6";
      };
      "aarch64-linux" = {
        sha256 = "3985aaf75b3bff1d8d031b726c804e4152e1530261683cdce14e954f0af2c912";
      };
    };
  };

}
