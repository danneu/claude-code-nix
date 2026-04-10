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
    version = "2.1.89";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "f903a5e53f845b1ac5566296b713193827665f28da16300fdca7539cb0669a7f";
      };
      "x86_64-linux" = {
        sha256 = "903cb3c96b314d86856632c8702f5cdf971b804d0b19ef87446573bcd1d7df1c";
      };
      "aarch64-linux" = {
        sha256 = "428301f56cf0139e6fbfa55e13be3f0f032ac1eb5ddb8849fbc703ee220c1cca";
      };
    };
  };

  latest = {
    version = "2.1.100";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "0c4d58bfdee338da47353eafd9f0db77ec7c4a30e6c5bea629c535f91ceba624";
      };
      "x86_64-linux" = {
        sha256 = "74b372cf3e4a615b4b168c1f431338a79d8e40fa8130553398a438f924d81c66";
      };
      "aarch64-linux" = {
        sha256 = "de44237ef5bf1b77342f4b78f4d1d02b032767df144ac798ad50d84a2e39ac73";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.89";
      sha256 = "11wwgbqmcqhmhnazi8y0d70f72vmpcja7qsqi7sh9di43c03a3k8";
    };
    latest = {
      version = "2.1.100";
      sha256 = "1c59b8cizql0v26yj4chaj5r2dkajwd59n96y4ngjwnvd7dajj0f";
    };
  };
}
