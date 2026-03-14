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
    version = "2.1.76";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ffe922f4f4ac542f4edbeeabbce2a7492308d034c66a2427caec5c31c39b71c8";
      };
      "x86_64-linux" = {
        sha256 = "801a085676c3d54392c42e8e43c44947df7c52132356575f7d9267c4f22d6992";
      };
      "aarch64-linux" = {
        sha256 = "40f753c07f070df34ca83e400f746a8279a3fd343967a453d9fbfab2f3ca7acd";
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
      version = "2.1.76";
      sha256 = "19bspc18gs6az5w2mc6y1zdrziahhy23gn42j1n8ydshnrvlndpn";
    };
  };
}
