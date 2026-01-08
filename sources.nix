# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#   - npm package: ./scripts/update-npm.sh
#   - Both: ./scripts/update-all.sh
#
# Native channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)
#
# npm:
#   - Single version from npm registry

{
  stable = {
    version = "2.1.1";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c7939fb4bd10bd0e5aca07f8cbc4cea85c6fccc71d367a58566d254eb13f2098";
      };
      "x86_64-linux" = {
        sha256 = "7d630126bd6fa8372720a48055a85869741b076b143440045c89565cf3c65a28";
      };
      "aarch64-linux" = {
        sha256 = "3ec039081a8bdd141fbd7f49ea68af747a070164925f9221b1b1218a8b4a5b27";
      };
    };
  };

  latest = {
    version = "2.1.1";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c7939fb4bd10bd0e5aca07f8cbc4cea85c6fccc71d367a58566d254eb13f2098";
      };
      "x86_64-linux" = {
        sha256 = "7d630126bd6fa8372720a48055a85869741b076b143440045c89565cf3c65a28";
      };
      "aarch64-linux" = {
        sha256 = "3ec039081a8bdd141fbd7f49ea68af747a070164925f9221b1b1218a8b4a5b27";
      };
    };
  };

  # npm package version
  npm = {
    version = "2.1.1";
    sha256 = "1sqn80dmbfwdczzzmc4bcy0wykl9wyf07gpr7x009hsk3ays5jd0";
  };
}
