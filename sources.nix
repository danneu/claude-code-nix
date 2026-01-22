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
    version = "2.1.16";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "35dbcfaaec50eac1bf062b17a0ab97f3d72576bbcd0bb760fcfb9ad33f7ca413";
      };
      "x86_64-linux" = {
        sha256 = "d1748b4c5f5354ef61b8884bdc9bfeba11341b4cb23c1a498e8f885642c812ef";
      };
      "aarch64-linux" = {
        sha256 = "bf1e06c69ebf77bf6d0f7d83d6e7d8d7a34b2b6c217aad2ee9bf4e10b1bc0c1c";
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
      version = "2.1.16";
      sha256 = "14h9hh5ymp6vpp0ka4g095jrapf5f54fn9maa21v9mfyksip8j4l";
    };
  };
}
