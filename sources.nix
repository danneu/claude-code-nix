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
    version = "2.1.32";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "841ac3051c04480a5651bc9f4ae27ab9d3963477250e71892e4d6e05778dd9d3";
      };
      "x86_64-linux" = {
        sha256 = "96cd1ba796772481bd49bd67e3b8484565d1f3a99662565516c3bfe16d9afd4a";
      };
      "aarch64-linux" = {
        sha256 = "6f8390c0fde5b802ff777ab54225233f6159d76913adc3b8aea7c8774fa8fe70";
      };
    };
  };

  latest = {
    version = "2.1.42";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6908152bf1a4babb13de86640f3795349005069b541d4b8a3996802b863a02fd";
      };
      "x86_64-linux" = {
        sha256 = "51785bd26d2896396819832bc23a18a6c0ca39b7b761193fa7b6e990a17f27d8";
      };
      "aarch64-linux" = {
        sha256 = "5a75d0713287b636636a06ce9103ff54f5788170f2e9312fc7559121f649d36f";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.32";
      sha256 = "1v811dwpqj3yfyghdw9zwiw7l8xdgq3zb8bnx3w7jnkihnqqzh58";
    };
    latest = {
      version = "2.1.42";
      sha256 = "14vi1h1hzklyin9yg8r6n89qmwfn2n6p1j24373cvaar3axspxk5";
    };
  };
}
