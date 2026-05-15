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
    version = "2.1.132";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2ce6b9007f38f5caf0d116ae35d59f1a6d40e902ae7f9f19aca6ec483697b764";
      };
      "x86_64-linux" = {
        sha256 = "623086f65cfd9c3aff0c8a5125087f8aea3100aa92bf3f0533b2bea5e5d69e8d";
      };
      "aarch64-linux" = {
        sha256 = "27266669eda5ae6115837e06230973f565f99b0f25c09ad86aeed404c3f7f947";
      };
    };
  };

  latest = {
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

}
