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
    version = "2.1.94";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "cf1c5db5e87610eca1e8f06dc2b2a2a9c0c04c179c55c7e1fcdfc9a2c014b31c";
      };
      "x86_64-linux" = {
        sha256 = "7cbc939cb52e09d49fd82092061543d21100b04c321e19fecf06f087dc908667";
      };
      "aarch64-linux" = {
        sha256 = "b3524791b50b314b17dac9978cb9568fa2e11a46562ae6f798d0dac453a0604a";
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
      version = "2.1.94";
      sha256 = "10h3n32647b4jmgcjic42ql9gh1zq4hd3jlvc9gicz92nm9sm8hl";
    };
  };
}
