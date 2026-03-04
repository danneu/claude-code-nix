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
    version = "2.1.68";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31b1e5fa5e47480a62484a44afbc97f9159dc1c7d0d1a4b2f41145b9b3c2ccfc";
      };
      "x86_64-linux" = {
        sha256 = "969a20cc4a9d96e3449090ed394efe4846e920cec5d12cb9ce8bdef5e1abe575";
      };
      "aarch64-linux" = {
        sha256 = "48c631271df8ef53a349975f276f1e2d0ed7f19ff889040b6546f16e1df1c25b";
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
      version = "2.1.68";
      sha256 = "1i2k8w67jmqzkcp6cqgm0pbsj53bn1fdf8dywnbkx0mgggm6ywr8";
    };
  };
}
