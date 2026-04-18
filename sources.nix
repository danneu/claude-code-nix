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
    version = "2.1.98";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "db75cb2c3f5c5ad24dc29af5145fea39ef58fed0faea0a4a099cd5afb291482b";
      };
      "x86_64-linux" = {
        sha256 = "d40827b5aa8d737a7eb68e3aad990b80e2521540a6bc8a405259b63b25d42ed8";
      };
      "aarch64-linux" = {
        sha256 = "67c0b9b7ed9c63f8524ecf5790805842f81d8322254dea849ecb8c7051f8df6b";
      };
    };
  };

  latest = {
    version = "2.1.114";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "bf1b4da368da7970f0d1d4a1675acea99b6f2ad94f24e9f8ccfcc7940ac67894";
      };
      "x86_64-linux" = {
        sha256 = "12bd4b0916deb06be17ffc7b2f0485e140bf00b2db3dcb78469d66723d73c27f";
      };
      "aarch64-linux" = {
        sha256 = "9556b74e2c912e7dcaef90c91fd0dd5095364f8a9d71398de3c5c669612b828a";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.98";
      sha256 = "0yqbihi3km3c4gvac8bifni7yjc6kkx9g8bkph41k757x1y46dm5";
    };
    latest = {
      version = "2.1.114";
      sha256 = "1bxrhx5n213hggjixybwyccq40vjr1fjsrk1p535y4g7danab4i0";
    };
  };
}
