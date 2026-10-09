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
    version = "2.1.286";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "75e3016e9d2570767b08e43a7467d4817a4f149232c169ca295f2c95fef21433";
      };
      "x86_64-linux" = {
        sha256 = "fe503f65c6289d59c23e5b21ae44f03583f997dd33a2cbfc75ab4f96fb8fc73f";
      };
      "aarch64-linux" = {
        sha256 = "0292fa22ac2fd43e16be9d0e511ddd8347280d6e0ebaca744ef5b27e05d8d0f8";
      };
    };
  };

  latest = {
    version = "2.1.295";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "0116ee2e0a513900b633d9951367f18747686478e2b462805b8c31609f047f70";
      };
      "x86_64-linux" = {
        sha256 = "4503bfe11a6c7fcc1e0b39b5e0d347c04248f750b03b0977b3ad6b531fe6f358";
      };
      "aarch64-linux" = {
        sha256 = "cfb9dc1332fb6f92a683f835823e91b3179a803398ca7852cd2381a3cb1dea3b";
      };
    };
  };

}
