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
    version = "2.1.108";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8d66163313976b0045b829e37eb3fcccb10ce6fd7e04a6db85d2c3915ff8aaec";
      };
      "x86_64-linux" = {
        sha256 = "1f641676eb086ceafd76a5f51ffb260b948fa1f6d77991d8cd6e480267dfff37";
      };
      "aarch64-linux" = {
        sha256 = "7bef1f7dcf64a221fc66571a176ca6206088bec48613a46cb4fa6328169c0bd1";
      };
    };
  };

  latest = {
    version = "2.1.118";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "54e5d3f65109b89c6046f47440944d52906c662d1e51748f620a430d26ad3665";
      };
      "x86_64-linux" = {
        sha256 = "ba363b2410a47120d2d4b8ece2e11fe0bbc5d59adb1329e8fb87ea0f370f4e46";
      };
      "aarch64-linux" = {
        sha256 = "b77b22fe93c15409f3c64be67950fe11e5fc17d1cd327891596cb87dd9be0492";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.108";
      sha256 = "1f6rw008n1m4pjy7qhnywya50bj2n5ms7ygd7q20imypc2cb485y";
    };
    latest = {
      version = "2.1.118";
      sha256 = "0ivcz9lxpwgvg0pbrplh1c00szwjx8mpf01087q71giw4fc25wbb";
    };
  };
}
