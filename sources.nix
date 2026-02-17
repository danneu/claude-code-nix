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
    version = "2.1.37";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "00ed10afb7a562440773de31284568ce9c33385d79d3a912a12af262aefd130e";
      };
      "x86_64-linux" = {
        sha256 = "f967a4d06e16a32436b6329e2dbed459a9fa4d34f07635a1fb271b74f706c91f";
      };
      "aarch64-linux" = {
        sha256 = "d725cc73060f400a7ac03a769969397daec9d411dbd5b1c7bb1fa60427bf657e";
      };
    };
  };

  latest = {
    version = "2.1.45";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e65af16b9b732ce01d6423c281f7e6a255b5bb8850780becf999153386e37fd4";
      };
      "x86_64-linux" = {
        sha256 = "e7e847383c4666994707741e8e56abf84dd2430153620d3ba5ff5a849375e4de";
      };
      "aarch64-linux" = {
        sha256 = "e678f0e8112e470a92723ad6883ecb1940d1411548f678f21ea4e9cc41057e7f";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.37";
      sha256 = "0nlfx7rm9n5a5vidhr43ii9fn2jjr2rwhy89fsn7w3kk3cvsn5i4";
    };
    latest = {
      version = "2.1.45";
      sha256 = "1n91wbmpjzy858cmn6w685r5mg42i4p9nnq2pcny4wdjjcchl53n";
    };
  };
}
