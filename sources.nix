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
    version = "2.1.17";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1d819a7c0ed1ad6275f42cf2b67041ab809afb1cd3537c6ed6e618b88e5a0531";
      };
      "x86_64-linux" = {
        sha256 = "11a8bc2dece1cd7717a4c113883a573095511475545595d2b0e96f188d651e0f";
      };
      "aarch64-linux" = {
        sha256 = "c21625c0f9627ba431c5be3573c4f8a0dee64b57e0d11220930c29de1028f829";
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
      version = "2.1.17";
      sha256 = "1b3vvph1f0zv75aryzsb5kq7ivzhfw60aag19plz8kv0czdkbs2f";
    };
  };
}
