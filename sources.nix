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
    version = "2.1.71";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f3d8129ec7ddaf158c10e193df546421499d69b7f44ec2f0b67c3fe54f601cb9";
      };
      "x86_64-linux" = {
        sha256 = "61002e5f5c4190e9a775bd9cf90e57fff3f0379fb2c8edc653ac0942a347babd";
      };
      "aarch64-linux" = {
        sha256 = "ae26e4a5654238f0a684d5fd9a6bf592321b06eb88ea834343b275f310e39bea";
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
      version = "2.1.71";
      sha256 = "1lgpdsi0cvi90p81yjbg0gybzw031pg3qf2m59jzy6kdv99hrjvg";
    };
  };
}
