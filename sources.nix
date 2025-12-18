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
    version = "2.0.65";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "450c94c4c0d656c4d332146411543de976c6b4401637807e6613f350fb8cb8e3";
      };
      "x86_64-linux" = {
        sha256 = "cfac3d6fe993622b6afcee02631e24e6f990c924733e63be9b7482a56627a9ca";
      };
      "aarch64-linux" = {
        sha256 = "e336a5542be2ea44e8aae5a8f924553519b8c3247f3c5d82206a725afbc048c7";
      };
    };
  };

  latest = {
    version = "2.0.72";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "57c9ebe132a5ed8aa934d1f728c6fe9b08dc4f9f6c44697d98d965158e9d8c48";
      };
      "x86_64-linux" = {
        sha256 = "91521249ef601cc2e6a0f4432ce095acc99ecbb87cf29c2b5bf652e566503bb7";
      };
      "aarch64-linux" = {
        sha256 = "44fc21f4670c77ae30b0705f79c9a572bf8516a4f8ca918f62320444ed360c4b";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.0.72";
    sha256 = "1bb8f7cjzc7xv22djb5bna5dig6fiykslvx498rxvwvwxz0ygq1i";
  };
}
