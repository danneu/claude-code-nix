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
    version = "2.1.236";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6bc4ba992d2786cbf0237c4453ca53c1fdf0c3b3d83ffa0025c0d8190ed27848";
      };
      "x86_64-linux" = {
        sha256 = "6c8818fa22187aa555c242be4abbacc44d6b71a32ac9631ee7b2b5d12f51f752";
      };
      "aarch64-linux" = {
        sha256 = "c38d37deaf1643083326c48a6acc0afb09dada126e6bda77ef1a4410ae60ca12";
      };
    };
  };

  latest = {
    version = "2.1.251";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "625869b01e0050f260b2980fac248fd9cef9e462612bded4ec9d3d49ff8969a5";
      };
      "x86_64-linux" = {
        sha256 = "fd5f10ff0eb58daec04900466b143ea98aab50abf208a422bc008eaec13f61f7";
      };
      "aarch64-linux" = {
        sha256 = "65445bd4dd042079cc3fa43791b561370a05c8599e8ec47580e25a81050abbdd";
      };
    };
  };

}
