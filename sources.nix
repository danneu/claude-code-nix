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
    version = "2.1.58";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "182c20c6080d042e4e08a6b2a2ce8258c1a50e53c01d36ddf20a82b4693395ea";
      };
      "x86_64-linux" = {
        sha256 = "10f68e45b5ff4a80ae21e6d7a95dfe673ab3391313358ccd94e827f379f6aaa0";
      };
      "aarch64-linux" = {
        sha256 = "5edd4b6be6b9e9c00e5805f022ee924a98fdcf1bf0c04635a429d2666eccbc3f";
      };
    };
  };

  latest = {
    version = "2.1.73";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5d402f804dde699c3824e93fefc198d81a52947a43e578286ea01cea9c029a73";
      };
      "x86_64-linux" = {
        sha256 = "960cd0d71a225f3b946bb49dd5c19624c558077d9cf3da4eb570380b43135b7d";
      };
      "aarch64-linux" = {
        sha256 = "7a9d6851c57df4af7ac2800817a81970cf17c388e02d3749610d2fe199c2d0f0";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.58";
      sha256 = "065dkk0bnh408n6kdccqjhfqw7k20d231ky0m9ic93r6nhdnma8n";
    };
    latest = {
      version = "2.1.73";
      sha256 = "0h1p0qy4vy3v5chjp3kxnkga0xsrfabv052c7101j5z5xq8lvh9r";
    };
  };
}
