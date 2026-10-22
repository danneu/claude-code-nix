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
    version = "2.1.306";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "b5d795b7760032d79954b55a9cd1876dcf3a8dc9608fd6bb9f618593f69fd44b";
      };
      "x86_64-linux" = {
        sha256 = "520bc6c1f40af466bd03a278b5ae1af1a2938bc7de5b9e5cb15526da20d71cfe";
      };
      "aarch64-linux" = {
        sha256 = "77d257d5e8b8730ec61d5a4992a8eb65550aaf9589f464988aa1a9684338d801";
      };
    };
  };

  latest = {
    version = "2.1.307";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "5b113a7752119470f1da419cb0e608af3361cae25b614216b13022093958fb2a";
      };
      "x86_64-linux" = {
        sha256 = "6021eb72d20d0682b720bdc63acd2a5cd2270895d1f10d9ca2a88cbfa7b9dd0e";
      };
      "aarch64-linux" = {
        sha256 = "1c67968ab8410c9644e2f4867167a0dab1a8c6c9de9cc83fe78449e5ae8a3633";
      };
    };
  };

}
