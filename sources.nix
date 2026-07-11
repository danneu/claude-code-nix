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
    version = "2.1.197";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "8cc0c4d1e4eb1dca3b0cc92ab02ee3505de764e023f8c901761c167b72041fb8";
      };
      "x86_64-linux" = {
        sha256 = "f54e69cbc89b2da61a415700af7ff52a147e862517d4f1b0eecf768448cf7f83";
      };
      "aarch64-linux" = {
        sha256 = "fb48473c467c27615ac799a754f4ef0b68c363e4596cefbb59c3815d51a0cc8a";
      };
    };
  };

  latest = {
    version = "2.1.207";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1397a062c6889675055e3314dd956376ac51262a7734ad9e819c26975d71547a";
      };
      "x86_64-linux" = {
        sha256 = "85e7e988a392d859f90802ca21fb26e89d3c9ab527f5ed0b08df3955e34d5c83";
      };
      "aarch64-linux" = {
        sha256 = "8bc14a284065383460f37981d724b8f7aa7ca93c9849d2fe367e08f03383f454";
      };
    };
  };

}
