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
    version = "2.1.69";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a86e14f44b167c1e8dbf764f76755b92ecf52c097d732a3461fe65b5fb60be05";
      };
      "x86_64-linux" = {
        sha256 = "b3bdbd5a3cbf8caafe353022170df77fefa80b00003074d4d27e7da8c59e629a";
      };
      "aarch64-linux" = {
        sha256 = "ecc7bbf10513ff122327866eb97212945b73afd7f81e30700375cdf10f50b2a3";
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
      version = "2.1.69";
      sha256 = "1b8hz5822nxs4m7r1w6z8152z2j4f8321lj09z6blx21ycf05d25";
    };
  };
}
