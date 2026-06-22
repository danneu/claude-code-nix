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
    version = "2.1.177";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "eb0730351be2f02b482b1855870f5877489085aac86b0c4c1db4e458d9e40ed9";
      };
      "x86_64-linux" = {
        sha256 = "ff41753634b20c869ef6a32a20863521b33d4186ac0d6a49379ab48a48395ee7";
      };
      "aarch64-linux" = {
        sha256 = "baf3926dc166215772f959e367da9784ff4c75157aaafe4524fdc79ebff984b1";
      };
    };
  };

  latest = {
    version = "2.1.186";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "463a79cc34a9787cff1b3361b4ec9e2dff928c18b077f41f0bb412e4cda78637";
      };
      "x86_64-linux" = {
        sha256 = "6a6d5d23486597c93138941c9b68caa0fbcd2dcedbf49e29a9c8d83e3a1cb329";
      };
      "aarch64-linux" = {
        sha256 = "817e5ff483568b78c49171be317b9b9190cade77248a5776e912789312961cb6";
      };
    };
  };

}
