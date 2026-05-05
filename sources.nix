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
    version = "2.1.128";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1a56ae4cd171ba7839fc2b03d558022ffaebb5693be532d8f3c344731063e979";
      };
      "x86_64-linux" = {
        sha256 = "770c81373ad42970ef576676da78d6be60413f4ade23abadbf1343ca0809bb3e";
      };
      "aarch64-linux" = {
        sha256 = "e2a31879b7433f658d915e6716249f10b913b467873950e8e7e066ba7c4d96e9";
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
      version = "2.1.128";
      sha256 = "0idrycxdykd9cpfa9qdiavp4mblnzv8lnmmv76qg4a4p1c7g3814";
    };
  };
}
