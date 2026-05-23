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
    version = "2.1.142";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "772021afa051160b97e04d379738df84d4cacd311e8c199a325fb013b3eaa448";
      };
      "x86_64-linux" = {
        sha256 = "1249a1dadfe2d48f320bd4e1b657a1a0d82435da76deb11ce509822407cf24ec";
      };
      "aarch64-linux" = {
        sha256 = "767b13fc28763ca9d663b00f90e501f134b356f1b72dcf0eea59b7e3bed86411";
      };
    };
  };

  latest = {
    version = "2.1.149";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "659d1a65cfd439bb43708fd1cfbe8346b59370a27f7f60f789e05f4604dee9a5";
      };
      "x86_64-linux" = {
        sha256 = "2959c02a605a616fb39cfa23e2f76356b254699dfdd5e5e838fcfb0414e48984";
      };
      "aarch64-linux" = {
        sha256 = "ab11cb6a2c43ef2dd1e68244b2dd470af07de163419a8b073a9b0e157ef64fc3";
      };
    };
  };

}
