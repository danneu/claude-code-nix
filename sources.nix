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
    version = "2.1.74";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "48a07e2887cd4879219d319e48ac5cc6e2098238c7c0abe01c57a35430941cb7";
      };
      "x86_64-linux" = {
        sha256 = "e5613610deee76cd32bc9b8e9e364da074fcd880705f837a4c9ee1ec38f9b73b";
      };
      "aarch64-linux" = {
        sha256 = "bfa883897a26433c5132a641b32d1fce00e1eff04a61bf52cd9ab85aeac2ea95";
      };
    };
  };

  latest = {
    version = "2.1.83";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "43246a9ff21de27c517f48af52c9d510c9e6e70bd90b115d80b9c690c515ae0d";
      };
      "x86_64-linux" = {
        sha256 = "ff79cd5d152017326f661309bbffbefc954f02a195fb232ada152d812e476e66";
      };
      "aarch64-linux" = {
        sha256 = "660bddb82c06a69bef8e468ffb8dd2354212bb76de122fe5d67393564b932de9";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.74";
      sha256 = "060qkn07hx63w5qn9ssix865ihi6w6cm1blxircpd4pqx8kkxqyw";
    };
    latest = {
      version = "2.1.83";
      sha256 = "0q855snl9ad0shvk3wl1807hypz9yqykrbdzdx0dq78ych8ri3as";
    };
  };
}
