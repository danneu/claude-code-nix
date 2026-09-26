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
    version = "2.1.274";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3509913f9d1576316c8845b88837f8fd3bbbcf26625833ac82cfb6b8985da94a";
      };
      "x86_64-linux" = {
        sha256 = "15e2d05148f801b5774032faad87e624ecd172e9903288bda448b892eb58fa07";
      };
      "aarch64-linux" = {
        sha256 = "2db904daea17addff9de557ba26a725916888aa7b546e2c5dd989c20d9d49ab3";
      };
    };
  };

  latest = {
    version = "2.1.283";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d8cb1e5c79684cc12a8bfc813e3a2073406921b6245744b3009be3ab5651d21e";
      };
      "x86_64-linux" = {
        sha256 = "1859583ce32920595c61ef868bee52e1b1594f7486db209935e01f1e5e804ae2";
      };
      "aarch64-linux" = {
        sha256 = "346d294f0103d6fc0de11ac953579b5c62dfa90698a4cfc486b6f927c615e697";
      };
    };
  };

}
