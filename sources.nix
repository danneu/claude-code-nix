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
    version = "2.1.78";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "0a4939f36bc0194021c56fa5c8470ad84e2282f2f404f1598a940c2044117168";
      };
      "x86_64-linux" = {
        sha256 = "b120a4139a4477a2719aeb0b2c790a5c2fe2d904e47f4e2adf3cab33b342d03a";
      };
      "aarch64-linux" = {
        sha256 = "75cf87465197883df61dcbb187d4ad3fc031bf91927658159929dcd2959542dc";
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
      version = "2.1.78";
      sha256 = "0f4dm5vpzlza3aflx7bpxk61jm4ix0qyf82dv6r6vm3zbydkwnxr";
    };
  };
}
