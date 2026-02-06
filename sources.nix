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
    version = "2.1.34";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "58bd74f33a9f0beb4338e02f613f63064fda73e9226288d10909df50a466ec60";
      };
      "x86_64-linux" = {
        sha256 = "3665f12f67a1159b31005dcce11ca1de41d49759bae3d01ed853940fe7c4a21f";
      };
      "aarch64-linux" = {
        sha256 = "ffb0625ad609b5816cedfb23f88325f62b63747ab6fdfe5a53f352fd4ed77b33";
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
      version = "2.1.34";
      sha256 = "0l47b1sfz7jsp1hqw28ri972cr82f0rw31hrqgrmsrjy72qj96pn";
    };
  };
}
