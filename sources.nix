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
    version = "2.1.89";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f903a5e53f845b1ac5566296b713193827665f28da16300fdca7539cb0669a7f";
      };
      "x86_64-linux" = {
        sha256 = "903cb3c96b314d86856632c8702f5cdf971b804d0b19ef87446573bcd1d7df1c";
      };
      "aarch64-linux" = {
        sha256 = "428301f56cf0139e6fbfa55e13be3f0f032ac1eb5ddb8849fbc703ee220c1cca";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.89";
      sha256 = "11wwgbqmcqhmhnazi8y0d70f72vmpcja7qsqi7sh9di43c03a3k8";
    };
    latest = {
      version = "2.1.98";
      sha256 = "0yqbihi3km3c4gvac8bifni7yjc6kkx9g8bkph41k757x1y46dm5";
    };
  };
}
