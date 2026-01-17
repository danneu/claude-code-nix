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
    version = "2.1.2";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "4d9c45ef1932914d45f7d942fff65caa77330c28029846881f3d755d7b88120b";
      };
      "x86_64-linux" = {
        sha256 = "83ec742dd439a960bbe04dab1794e62fe62804bce9f62b94f3dc64ff802a0b28";
      };
      "aarch64-linux" = {
        sha256 = "ad61c9b8a1767262bf4d40cb216a9038f1bdeca5b18a317c67f6bb6a29da4f23";
      };
    };
  };

  latest = {
    version = "2.1.11";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "2345c139c770576c354b7a39399ff941c1a8f375605c20a7abaedfff9a14d1d7";
      };
      "x86_64-linux" = {
        sha256 = "9d79cc613d5feff19c82330601bcc53d41cd03c42431110d74bc3253fefee263";
      };
      "aarch64-linux" = {
        sha256 = "494390020dcce1cf192ad19c20df4fba66b7a732e9dc32793289be948e589e6a";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.2";
      sha256 = "08l24i6qbrjnaymqh2wr4z06yfh14k54id6gas347s5wmns50968";
    };
    latest = {
      version = "2.1.11";
      sha256 = "0qqaw0vpfhiwyj2va0f1bwm4r5gny7k7wr9zp5f59m3v9a6ncs2r";
    };
  };
}
