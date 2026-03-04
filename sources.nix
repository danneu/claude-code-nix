# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Channels (both native and npm):
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.50";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4b6c1cb5e02428dbf600d08f88c28f9ea06619001c3efebf8890365e5b79d1b7";
      };
      "x86_64-linux" = {
        sha256 = "74042739197c58a4791c1f67414c0d8956639ec2f2e935280872b83d4317be78";
      };
      "aarch64-linux" = {
        sha256 = "4e2b23dbf2f97918d5edc95ae1de03d230a66b94d5fa31a57cc673742ec6ae22";
      };
    };
  };

  latest = {
    version = "2.1.66";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7ada6848516636e229eca0b5061585741c02b46d6b285f121c11a58c4c4875b8";
      };
      "x86_64-linux" = {
        sha256 = "23c277040f5e5125232f8689ed2698b7a09a0cd9b2863adb49220d25ea9deea4";
      };
      "aarch64-linux" = {
        sha256 = "2fcbd25c344c56efe6a3db2c19f22575a88f24e3a129ad0f1fe59e9004094528";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.50";
      sha256 = "1ma59vwgjamhp4iib555sp00cxzmp3jj57bajqnbyvk69jqbcyjd";
    };
    latest = {
      version = "2.1.66";
      sha256 = "1xlhfr59ls7k590plddgz5qkm5x8izrq60nkbv6pzidk2jv5b7ws";
    };
  };
}
