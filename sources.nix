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
    version = "2.1.7";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3429391a4ad97db4a91f33ab72613745d949133b276385e4ed93ed3706aa03c2";
      };
      "x86_64-linux" = {
        sha256 = "0e598f3c4f38f2f66ef027a257782396fc993c704450b96924004b76fd806f45";
      };
      "aarch64-linux" = {
        sha256 = "72f97b79dd5feb99dac6ee33a1b61d60aa720a010d7a9f660147cde10fe4023e";
      };
    };
  };

  latest = {
    version = "2.1.23";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "80e39bbc7cbbc7dea101dcf35676a270d5bff25a8a8e29ab038ceb131d8a7b3d";
      };
      "x86_64-linux" = {
        sha256 = "eff6d12c8220260b8d6926b35de20daae0db43de236920762c7da4c9d20dc843";
      };
      "aarch64-linux" = {
        sha256 = "4b45afbb3ea3708ef6ed5038a7cc32054487f1fb577f56e9418b83d163f88f32";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.7";
      sha256 = "0x6q3v4gi05zzbg19za4a5lz6w1aaprgp24irkkqcv94ajgcg9w9";
    };
    latest = {
      version = "2.1.23";
      sha256 = "1f67x4rk5kvn8vqpwqfms82gpprj49qn6ibhg6k0xjwbvm8476bp";
    };
  };
}
