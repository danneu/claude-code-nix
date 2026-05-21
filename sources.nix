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
    version = "2.1.141";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31ac95bb19a33b1d0cddd3f3ff594bf8bfd2be5051cd2af7867109641cab705e";
      };
      "x86_64-linux" = {
        sha256 = "832be26e8f15b2ae99e520a22b034fc4bfad1cb5b84de6b706487072c56bb42e";
      };
      "aarch64-linux" = {
        sha256 = "dc931e24f62afbadc8dc68115278b08493825a3ed1ea753d587077181a6cc63b";
      };
    };
  };

  latest = {
    version = "2.1.147";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "94a81554195edc33c2587f106bfc2e301f450f52a05cbfaed8b20f6f0882697c";
      };
      "x86_64-linux" = {
        sha256 = "d3e134bf504d6ff7db68d0a6f2206c9a15a6d2f94053845116f3303b0a0d79d4";
      };
      "aarch64-linux" = {
        sha256 = "c7b5b050f9a4cebdc1b369935d3f64078b587b869ae8789c06c437c559d6bb2b";
      };
    };
  };

}
