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
    version = "2.1.104";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "185aabd6d16dacb01a6dd41fc8d8ae5ea78ac8a6a3683caa05b759c47b24de60";
      };
      "x86_64-linux" = {
        sha256 = "f5fe84d4b8a5a322b83a8ae63ac117adb143d2a9a0bfd73a201a5201d6423869";
      };
      "aarch64-linux" = {
        sha256 = "f0a79ec304334503a563c6d4618b0ea1fcbbe477a047dd3955e2078a3c5559c1";
      };
    };
  };

  latest = {
    version = "2.1.117";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "12cf77a447d129d3fb691023ee3ced3e43efbde72ab910c6162db2c7be5ca374";
      };
      "x86_64-linux" = {
        sha256 = "b7246963d9e32ece439c3e1e7885f53773a4820e90a4d2433ef2a413a055a5fe";
      };
      "aarch64-linux" = {
        sha256 = "302c9c189552dc261b1c4511d0d8c9147baeaa4bf7e50785873fa1699ee51f22";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.104";
      sha256 = "1xyjiz273hh8zam1zp1i4xdhiqhbizqc2mgjmgn5zsdqvvd58hf9";
    };
    latest = {
      version = "2.1.117";
      sha256 = "0flvf8zywv5fdmsnbwwp9vmi0dp5zdkp4cj0g46ik8xi0bman0p9";
    };
  };
}
