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
    version = "2.1.75";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8c541a5e924eda2070eaf1702a48047af671c4dff6a11a5e762076614a082675";
      };
      "x86_64-linux" = {
        sha256 = "328b0a429c05a04f911157d886be5123cf1824a19ba8ca1f9d594c004eac32c9";
      };
      "aarch64-linux" = {
        sha256 = "ec8f4f7f7bb50611dae70c109a76ee1da6a3ab45511c65f117df215848ecc905";
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
      version = "2.1.75";
      sha256 = "0fsvqc79fzak3iddly0z46qfnapvkp10c9jghh90n6bbzzj5xh6i";
    };
  };
}
