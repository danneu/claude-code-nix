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
    version = "2.1.20";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c5703596ed854ae8e5775cf38de5d71d8a56ecfe3f36904812870e9e34178c8c";
      };
      "x86_64-linux" = {
        sha256 = "f9d3698f5378a486db2d4eea5c80f95c2ceb410fbcea9ffc5703b5aac9574fcc";
      };
      "aarch64-linux" = {
        sha256 = "eb8801c7a4a8501b21c235f36674f17328e65e796cf8a6196b3bf9a23ae16f99";
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
      version = "2.1.20";
      sha256 = "0jghdvs05rrd90pvc93ak432idp35353996z68zzvj1d4jgp4g6y";
    };
  };
}
