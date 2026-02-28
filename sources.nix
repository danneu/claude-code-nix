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
    version = "2.1.63";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2e8667322e0bd104087df2a8857f176acc75d7091aa02828825dfeb4a5708531";
      };
      "x86_64-linux" = {
        sha256 = "734447e461bb92f0ffd5f683bb6216c35a3c16e8dd84be8d150b43605d39b0d1";
      };
      "aarch64-linux" = {
        sha256 = "1fec8c8369606b4a6c00af963354b7d48aee793ed5db378fe4cf280149f3190a";
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
      version = "2.1.63";
      sha256 = "0xxsgjz0gkfmgxgaifwy5c15vziagpvjd4nb01wimldicq2ysz3q";
    };
  };
}
