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

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.25";
      sha256 = "016kf9vgp1zjgzbz4ch5mlylwkbzlls4fv2rdzpsdmqwjghg4cz4";
    };
    latest = {
      version = "2.1.37";
      sha256 = "0nlfx7rm9n5a5vidhr43ii9fn2jjr2rwhy89fsn7w3kk3cvsn5i4";
    };
  };
}
