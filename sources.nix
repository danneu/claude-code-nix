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
    version = "2.1.144";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9886baa4ec4c455f86108464f121732193ee76e5dfceb031005f59f31276a5df";
      };
      "x86_64-linux" = {
        sha256 = "147480774472e5720fd5e83617b3e9299344e7213efa84c326b25bd5a0f20b4e";
      };
      "aarch64-linux" = {
        sha256 = "c8ccccbfce12d684588bd3af366394132f614dcf3c86beb2066f86bde2704513";
      };
    };
  };

  latest = {
    version = "2.1.152";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "43cb9361f7bc48c39214d5f125003b8de0ebde5cd6a1173e6b74fcdd10966d46";
      };
      "x86_64-linux" = {
        sha256 = "5155bdca27f754aba0d2fe2f80336f5fd4793224561c234a723f0ccef654a8e8";
      };
      "aarch64-linux" = {
        sha256 = "35ef2685c4f679b5c4610ef56b30a680b6d595b958b4fa5ec0bfa2852195f345";
      };
    };
  };

}
