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
    version = "2.1.87";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "80b51562db1a51bfb654aec1fea6a04106daa0bc1525d88c9c74741ff5d9469a";
      };
      "x86_64-linux" = {
        sha256 = "b1a5b89469862adee0e4dc28cab5a8314bc4d0117e19ab26a7b7ff7ce9b59bd5";
      };
      "aarch64-linux" = {
        sha256 = "193c5e9c091eadde302fa23af46c8d646b7263f74fa06ed32746e504bd09df18";
      };
    };
  };

  latest = {
    version = "2.1.96";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "31bad8c237dd561566620595227a734d9736c979a7ddb52c6c65d9ef93b300e3";
      };
      "x86_64-linux" = {
        sha256 = "9bcad6249b4e9c1a4db52430e2834f14b59349c87de0ecb0b9278cf1f4a20534";
      };
      "aarch64-linux" = {
        sha256 = "c8876673205945df1bcb33415827d169785b22ac10150cfaf3a7f5e2d58bf08e";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.87";
      sha256 = "18lnqln4piwjdv7aky3fswsf1ccrb2hmnpm0qcaf9dr3s8jchmax";
    };
    latest = {
      version = "2.1.96";
      sha256 = "0n6yi0xbr7y9dc0bmafa245f02xrqxiaawmpq3wsiilsx9w05ms6";
    };
  };
}
