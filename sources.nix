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
    version = "2.1.326";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "e214ad76dcc0e846b03be28ed1c2734aacd4e27acb527cb7f8a9e2bed644e837";
      };
      "x86_64-linux" = {
        sha256 = "b6b3647d981130dc44fc670846ae97b6cde531ffb667cf9c4d17cfcafb38cb37";
      };
      "aarch64-linux" = {
        sha256 = "98d56f6ffe53469767a74864a38eaf359d62ef557a8de1b1ad524d61a66ec119";
      };
    };
  };

  latest = {
    version = "2.1.332";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5b8214f8f082f3187420b27b4063b9b4f4d9412cd66ea436d6d1966ad582700f";
      };
      "x86_64-linux" = {
        sha256 = "a2df1f41bb00250992926420d0063f89b127cb81abdd284dbefb80c50ff1d026";
      };
      "aarch64-linux" = {
        sha256 = "50c305fcb8912851ce774429131d94ed6f84edbe3d8d0ed7a59dade5d893acc0";
      };
    };
  };

}
