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
    version = "2.1.15";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "cc627c0ef5ae192c05d002f273e637d867692090bd23effd5ef520690db95e71";
      };
      "x86_64-linux" = {
        sha256 = "37f8e874b8d07f3b60a3b66c7a01034837d1e333eb41552d0932d784255e862d";
      };
      "aarch64-linux" = {
        sha256 = "20a520256b78aff56d4273d618c97965913e041a850fe6ceab9b714f57e39554";
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
      version = "2.1.15";
      sha256 = "1gm8khcb989fxzd0f3nrp1ig2hppn4y0mviba3ya0pl0kp8yl7g8";
    };
  };
}
