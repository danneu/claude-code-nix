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
    version = "2.1.72";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c584f51362d562695bc71750d1c2196f9a0e0e36fd043e2bc683ccfc9a3ab3d7";
      };
      "x86_64-linux" = {
        sha256 = "b55338e7fbb8bf7d268b91bab3b28753621dab9637b1cca943669f4490ed878d";
      };
      "aarch64-linux" = {
        sha256 = "9f0c10cb9d222eaf4ec4870403a1561b1329dc669303613369a877fd05a11708";
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
      version = "2.1.72";
      sha256 = "04ms2z1y8kslzknymjawphf1hwysbfr7kc120kz9ph3byrs8j7z1";
    };
  };
}
