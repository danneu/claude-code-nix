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
    version = "2.1.119";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31db3444309d5d0f8b85e8782e2dcd86f31f7e48c1a1e83d69b09268c7b4f9a2";
      };
      "x86_64-linux" = {
        sha256 = "cca43053f062949495596b11b6fd1b59cf79102adb13bacbe66997e6fae41e4a";
      };
      "aarch64-linux" = {
        sha256 = "382aa73ea4b07fd8d698e3159b5ef9e1b8739fae7505ba8ddd28b8a6a62819ce";
      };
    };
  };

  latest = {
    version = "2.1.131";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "cc6066b0db7bb423c75316366542f771a41923999a76a5771afad87dd65dceae";
      };
      "x86_64-linux" = {
        sha256 = "9af15b9302ffde3fa83e3ea4a41cdd00158301cd8badc755567a8e9149f1c36c";
      };
      "aarch64-linux" = {
        sha256 = "0919cdf512ca673b38230882b458801b78e9248eb472383631cfc12d8d0d55cf";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.119";
      sha256 = "1wimycampcgb1gfy9zx30zjq37b1ld7vrnbqiawf1vavxhr308bh";
    };
    latest = {
      version = "2.1.131";
      sha256 = "0mzxfj2jbhwrklvissp5wzf3ig2a47rfjw18b3s85jn72cqvfw9c";
    };
  };
}
