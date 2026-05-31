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
    version = "2.1.159";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5adf7b4d349f743d669cd5adf2ce76dbb5e146d8ab99b3a63c5aef2ef15595f9";
      };
      "x86_64-linux" = {
        sha256 = "e2126caf00ed3ec09371a29947658c7e9b31185256b2ac5728263bd95f7e3541";
      };
      "aarch64-linux" = {
        sha256 = "befd054f02c17e4b61a6a92b30286a147ca8c5c1bbf38b91dd14cba6fbb1e07d";
      };
    };
  };

}
