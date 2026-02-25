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
    version = "2.1.44";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "03cb80fe89e645f465a11b519fc31bd4295c30d33f47bd84be5a018fffd7a4c7";
      };
      "x86_64-linux" = {
        sha256 = "090ed3f06be51388bc511f90214484891432c160349c9c3fc6a131001c763381";
      };
      "aarch64-linux" = {
        sha256 = "335f440cfa4c3b020e79896a00bfb68376c6efb11051c7e6736732acdc74d6ee";
      };
    };
  };

  latest = {
    version = "2.1.56";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c79534202fd33f11f1111ee0a0fa10143187a345e095cb2dd8b6186d8dcc6f5f";
      };
      "x86_64-linux" = {
        sha256 = "e139d71f9dec4d86308341b16d00c24441c789d0156852364a4c7dcf3f2e9b3e";
      };
      "aarch64-linux" = {
        sha256 = "566ce5c41ac7ecbb259d46fe5d58d45c03e70323a0ff3f05a0ddc358d81f73a1";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.44";
      sha256 = "15zwakq45lc3w0ww0ymhm2yzid95p1wypfkivd8njd5xdwnaanlw";
    };
    latest = {
      version = "2.1.56";
      sha256 = "1f87p5cy6047m28inva41lc4pz4vy5xxwpqyaxjp4f32ipxc8z5r";
    };
  };
}
