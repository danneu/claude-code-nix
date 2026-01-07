# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Native channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)
#
# npm:
#   - Single version from npm registry

{
  stable = {
    version = "2.0.76";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b76f6d4d09233e67295897b0a1ed2e22d7afa406431529d8b1b532b63b8cbcbd";
      };
      "x86_64-linux" = {
        sha256 = "5dcdb480f91ba0df0bc8bd6aff148d3dfd3883f0899eeb5b9427a8b0abe7a687";
      };
      "aarch64-linux" = {
        sha256 = "f64a994c8e5bfb84d7242cebbec75d6919db2ee46d50b8fc7a88d5066db193f9";
      };
    };
  };

  latest = {
    version = "2.1.0";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "731ad9c8a80564f45c2d7e6f9f5738280893dfebb2b06d7f8a35b56979702e4b";
      };
      "x86_64-linux" = {
        sha256 = "3feab2dbfe46515b52dc9f4eca7acee381ce8998bb891257a1709e0892d56b44";
      };
      "aarch64-linux" = {
        sha256 = "697bcfa00ce81b35fc235d5bff855054b39fd97678f9775724bc1495b9e4e009";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.1.0";
    sha256 = "080zypjr4jzsq7jimkkn5b7vc4h0liix8pb0apbi1jx7s9l8xxj8";
  };
}
