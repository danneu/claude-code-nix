# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.150";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2f8413ea1083f108587940496a17057751344109d261fb4239ab2d45b2285c99";
      };
      "x86_64-linux" = {
        sha256 = "6c086a0f5fbf684d4148bb69629268b4f5109498c1a7be757acf18c51fd04f4b";
      };
      "aarch64-linux" = {
        sha256 = "2052949543ea076e2b5cda44c031b2b34fc303db98dc56ad6583b7e0a417ebeb";
      };
    };
  };

  latest = {
    version = "2.1.160";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6c9069a9ee0e7b9b6ee43d006c3402e66815e19f87ac4313330cf03f83611968";
      };
      "x86_64-linux" = {
        sha256 = "2b84cc2e04633619eab02b9f77ed00a56b64682b4fa7b3267149ee9eb1fecfc7";
      };
      "aarch64-linux" = {
        sha256 = "1fcf285194a0ea0c5e09973c4c5910f71c5abf451930f0b9c79441d7501ac229";
      };
    };
  };

}
