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
    version = "2.1.25";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1023c0334b0bf99ce7a466adbdb24ed0cae0ce4e1138837238e132b3886dd789";
      };
      "x86_64-linux" = {
        sha256 = "696135f0eccaf7a4070168845146833fa4fc93a6191fe026a7517af4d2e14fec";
      };
      "aarch64-linux" = {
        sha256 = "38016991376efb8b1a83488800a9589694a6e77a7a920c5e654778c68753c776";
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
      version = "2.1.25";
      sha256 = "016kf9vgp1zjgzbz4ch5mlylwkbzlls4fv2rdzpsdmqwjghg4cz4";
    };
  };
}
