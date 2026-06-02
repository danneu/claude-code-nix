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
    version = "2.1.161";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5b4dc79eab05f9756c252c71deb339efa4429dffc1967dd8392cf87fcde4867f";
      };
      "x86_64-linux" = {
        sha256 = "1f6a22f387a3bce496b6d869389a35dffb5a69c97d9831833f3bd6dc0e6c6c28";
      };
      "aarch64-linux" = {
        sha256 = "7dfa0a79a2fc9f332057cdc0302f808cba63df7b75e2ccb5a7c1ab62639804e3";
      };
    };
  };

}
