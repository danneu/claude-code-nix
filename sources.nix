# Version sources for Claude Code native binary
#
# To update, run: ./scripts/update-version.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.0.65";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "450c94c4c0d656c4d332146411543de976c6b4401637807e6613f350fb8cb8e3";
      };
      "x86_64-linux" = {
        sha256 = "cfac3d6fe993622b6afcee02631e24e6f990c924733e63be9b7482a56627a9ca";
      };
      "aarch64-linux" = {
        sha256 = "e336a5542be2ea44e8aae5a8f924553519b8c3247f3c5d82206a725afbc048c7";
      };
    };
  };

  latest = {
    version = "2.0.71";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e1d03be9667c45ed3389a7ad23e5cd998da01b06067d68d2db17b0660f75fd62";
      };
      "x86_64-linux" = {
        sha256 = "38eab2ff90b2961afbca8957f779ec8a642dfe9a24ff169db780b8ab6685bf3b";
      };
      "aarch64-linux" = {
        sha256 = "7df8e01b62480c48bbbe10ff892e97589d2564ef11c49a93f51cb77a96fa4900";
      };
    };
  };
}
