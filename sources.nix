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
    version = "2.1.201";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a0852d76afc47b30f5cb0b7625ec9a7714cb189f2eeef6c28c77e2be954fb7fd";
      };
      "x86_64-linux" = {
        sha256 = "a34809a6839fdefff21b9347d7fb5b6b58e6a9cc208a5e62853f29c83eb107a3";
      };
      "aarch64-linux" = {
        sha256 = "86b2eab34d382c7b428fc2e9f4c97f04e46805e950582472a13eb7d48de60516";
      };
    };
  };

  latest = {
    version = "2.1.208";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "051c7f28871b158132ac03a6140f2f2ab4046b18ecc4f7a91a2ac4d54774551e";
      };
      "x86_64-linux" = {
        sha256 = "125372839bc827ca24dd72382627b291fbca615408d732fe3291bc16723ce7f3";
      };
      "aarch64-linux" = {
        sha256 = "81e5dd48377bfd3cb733820e4e23f2294c925cba1e52dbeada69f46929f0c4a6";
      };
    };
  };

}
