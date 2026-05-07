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
    version = "2.1.132";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2ce6b9007f38f5caf0d116ae35d59f1a6d40e902ae7f9f19aca6ec483697b764";
      };
      "x86_64-linux" = {
        sha256 = "623086f65cfd9c3aff0c8a5125087f8aea3100aa92bf3f0533b2bea5e5d69e8d";
      };
      "aarch64-linux" = {
        sha256 = "27266669eda5ae6115837e06230973f565f99b0f25c09ad86aeed404c3f7f947";
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
      version = "2.1.132";
      sha256 = "126fbmawz7jwfhxw5cs2z6xwl70sq9p2ysxlq4yvn6j5yv6q6dss";
    };
  };
}
