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
    version = "2.1.142";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "772021afa051160b97e04d379738df84d4cacd311e8c199a325fb013b3eaa448";
      };
      "x86_64-linux" = {
        sha256 = "1249a1dadfe2d48f320bd4e1b657a1a0d82435da76deb11ce509822407cf24ec";
      };
      "aarch64-linux" = {
        sha256 = "767b13fc28763ca9d663b00f90e501f134b356f1b72dcf0eea59b7e3bed86411";
      };
    };
  };

  latest = {
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

}
