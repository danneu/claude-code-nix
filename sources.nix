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
    version = "2.1.308";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ca923c86ac84b30574a82331a05b6e066c27477a926ceaffe46a845a33e4dd37";
      };
      "x86_64-linux" = {
        sha256 = "356733f185fa988e6bf3aa9a555269fdd167982a2e2a80d3c8a78037bb92ad58";
      };
      "aarch64-linux" = {
        sha256 = "fdd22e6cbb734d580f5664c48df4294eeec850218ff07f186f9af30426396ee1";
      };
    };
  };

  latest = {
    version = "2.1.310";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "ffb64331bc0ee1b69efb7c2c428bd3ab516bc31b75bf60886b356c97c1c25ffd";
      };
      "x86_64-linux" = {
        sha256 = "b73676430af12f97316a798b8371f81d640f90a58bdcb8f3ce56a835bb47df56";
      };
      "aarch64-linux" = {
        sha256 = "9c64d9a7442436b65fcd7cc02c1aa0051bb5a7041e7788576ed3b5f29c447d54";
      };
    };
  };

}
