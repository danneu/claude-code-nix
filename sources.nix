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
    version = "2.1.22";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "dd07b877ea3213ae7fd1df5536de3b441fbf7b11f93a0c20078540a6bd69033e";
      };
      "x86_64-linux" = {
        sha256 = "f7ba63e4d72ea8394998dec8b25cf94ba17faec434db17885218c0884103b5e9";
      };
      "aarch64-linux" = {
        sha256 = "3750cebff6c8d7664fdffef578b14b962af8e29daa7ce53c0a6bd0a317ce973e";
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
      version = "2.1.22";
      sha256 = "0q7y983f87apydfqqscdsl2rxszrpzzkgwivqid0ckvr025wpars";
    };
  };
}
