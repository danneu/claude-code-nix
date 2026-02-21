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
    version = "2.1.39";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d8d7a2b996a691036a53933a259a532254a400934aee452e289e1f4443026d82";
      };
      "x86_64-linux" = {
        sha256 = "68e4775b293d95e06d168581c523fc5c1523968179229d31a029f285b2aceaff";
      };
      "aarch64-linux" = {
        sha256 = "8f66e02a5be8a620e286f6e634fb424b5ac065731b048af3d745cf719b2c7851";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.39";
      sha256 = "1xn6lccs9g5j5cg5avakysp5sqbqzf9wwp4fx6p2606qwlp7z448";
    };
    latest = {
      version = "2.1.50";
      sha256 = "1ma59vwgjamhp4iib555sp00cxzmp3jj57bajqnbyvk69jqbcyjd";
    };
  };
}
