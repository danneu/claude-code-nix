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
    version = "2.1.294";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "def0d15e64dd7d89621f88d28214f885b1c38b0ddd69762fb8593e34915d6d53";
      };
      "x86_64-linux" = {
        sha256 = "27122ca7b624f537546fbef35b80c66370d974ff258f3d9b10ac50bb8771f262";
      };
      "aarch64-linux" = {
        sha256 = "e5d2df19f30a6d63bf11188121f7edb2775249b57352a69269509a4b1496e763";
      };
    };
  };

}
