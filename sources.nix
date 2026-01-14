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
    version = "2.1.2";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4d9c45ef1932914d45f7d942fff65caa77330c28029846881f3d755d7b88120b";
      };
      "x86_64-linux" = {
        sha256 = "83ec742dd439a960bbe04dab1794e62fe62804bce9f62b94f3dc64ff802a0b28";
      };
      "aarch64-linux" = {
        sha256 = "ad61c9b8a1767262bf4d40cb216a9038f1bdeca5b18a317c67f6bb6a29da4f23";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.2";
      sha256 = "08l24i6qbrjnaymqh2wr4z06yfh14k54id6gas347s5wmns50968";
    };
    latest = {
      version = "2.1.7";
      sha256 = "0x6q3v4gi05zzbg19za4a5lz6w1aaprgp24irkkqcv94ajgcg9w9";
    };
  };
}
