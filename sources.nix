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

  latest = {
    version = "2.1.162";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2d407dd2a63243ac900f64331589b9fcd29a2159a73289070af685f4085a17d2";
      };
      "x86_64-linux" = {
        sha256 = "947a49b0de8688f6a74a6e753c24771ff3ddd17b2a6dae85f36304ec514e61d1";
      };
      "aarch64-linux" = {
        sha256 = "eca2a603dfebc3426a8469cbe797f9df95245738bc1c20ec842fc8f80af4010d";
      };
    };
  };

}
