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
    version = "2.1.25";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "1023c0334b0bf99ce7a466adbdb24ed0cae0ce4e1138837238e132b3886dd789";
      };
      "x86_64-linux" = {
        sha256 = "696135f0eccaf7a4070168845146833fa4fc93a6191fe026a7517af4d2e14fec";
      };
      "aarch64-linux" = {
        sha256 = "38016991376efb8b1a83488800a9589694a6e77a7a920c5e654778c68753c776";
      };
    };
  };

  latest = {
    version = "2.1.33";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4167a0757899a94ba60ab7d815f6874a2dbb7099edb818eaaf5b44ed1f412edd";
      };
      "x86_64-linux" = {
        sha256 = "c8655931f35fe963cf002aa7ba2c214970850748bf1da5240f97940c2fd8835c";
      };
      "aarch64-linux" = {
        sha256 = "7ef627e6702e0855d00f04ef9818f23e0b64564b3e94173f2ec244fcf659059b";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.25";
      sha256 = "016kf9vgp1zjgzbz4ch5mlylwkbzlls4fv2rdzpsdmqwjghg4cz4";
    };
    latest = {
      version = "2.1.33";
      sha256 = "0m0hjbajhas9pz6hznijii0vax357fgaqdbxsvpp5cqlnyh8va7r";
    };
  };
}
