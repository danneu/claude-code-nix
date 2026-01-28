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
    version = "2.1.21";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e8265d8719f131ab8f2863e66ce69cc829c4f55387ae2286e45d4a06b802c6fd";
      };
      "x86_64-linux" = {
        sha256 = "35fcccfced2e8669dc4aacf2bb76fab9816bcc5fc566e66b5ae42f4e7b4474b1";
      };
      "aarch64-linux" = {
        sha256 = "e043ed95e4df4282a9adb34eb51ee14d59a53f2feeeb19884a6b4edeccbe7f3a";
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
      version = "2.1.21";
      sha256 = "1lr7lsjb0widvvqdfc5nwas8n49imb6vdvswhfv3gv7xazkmi3k2";
    };
  };
}
