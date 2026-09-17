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
    version = "2.1.267";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a681f3008f0050029aeebcab3af51bb6a55ddeb625a3af3141a4416d43cd2558";
      };
      "x86_64-linux" = {
        sha256 = "0399c793ff571d5946ef923d80b4f330d05ac4b6842a6b0775468f5d389403c0";
      };
      "aarch64-linux" = {
        sha256 = "226a4e009574044a18bf5495f127806b2a1bfcbf25b3c01608705fafee95fefb";
      };
    };
  };

  latest = {
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

}
