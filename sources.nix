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
    version = "2.1.81";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d014162177fc18bfeb7f93d942130dd964f7424e4101f6ad569de66e6eddca03";
      };
      "x86_64-linux" = {
        sha256 = "047e3f5591d6238b08dd9518729ac335b0e8df1c80fe985e5d7fbda2c18fc281";
      };
      "aarch64-linux" = {
        sha256 = "ccfc3845c8d1a2ded9656a3a517694a844a1b7005b87c784a66f7a60cc58012c";
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
      version = "2.1.81";
      sha256 = "0bsvqj5pijbkihq8qr07hm2jdhmjy2pi55sm1ciad50s4ikwqnl7";
    };
  };
}
