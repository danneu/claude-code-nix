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
    version = "2.1.133";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d38f34444911c86c73f32beb82821008b26be889fa0d0caf7085580cf5737e14";
      };
      "x86_64-linux" = {
        sha256 = "d0ddf0aee6e4426a705719e5d4716e3ce3cb38f9a5fe06eb6d5ffcef6c98832a";
      };
      "aarch64-linux" = {
        sha256 = "dcc7275f9198317e073c329abe174827604a801e9bfb577a00d86efcf4f8167c";
      };
    };
  };

  latest = {
    version = "2.1.143";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2701c6cfd68483f8faf0316a1ba6481a1455a90645ada179f0c48d8c36d722ef";
      };
      "x86_64-linux" = {
        sha256 = "f75fdc3ff9d9cd494b86192f9e349b5c5c6d3970ed4d5cd5c7b330c5a2b1dcc4";
      };
      "aarch64-linux" = {
        sha256 = "32e8edc4a5c3c41d18607c75d1b8e7bec643330c03e266be46ac3b41a446c4eb";
      };
    };
  };

}
