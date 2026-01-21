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
    version = "2.1.5";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fec6ccf4f1bc3c56ebd885c0b032e00ac3e04eb029edfbca166ea4379e1697af";
      };
      "x86_64-linux" = {
        sha256 = "bff6a9403b41ff4792dcd3d75cc2d49afa9f4efdd0e689c66a952ab301ed3802";
      };
      "aarch64-linux" = {
        sha256 = "371c19400a0c7f44bace9f8b24f10cf8fbef8842185fb5f69d5290ba8b04f1dd";
      };
    };
  };

  latest = {
    version = "2.1.14";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "9f1b058a134ceacb3d972fd07fdb36a4bd9fb01ce8b498e9dc4cc97593689602";
      };
      "x86_64-linux" = {
        sha256 = "2b31c53e861175a9e4ee8b94653be9fa193718c32b184cb47ad16ea4adc7a1ae";
      };
      "aarch64-linux" = {
        sha256 = "36b5586cbf1e1cfafe1b5eed626c10fd0217c3430ecef87dbf32f5b17906960b";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.5";
      sha256 = "0lpd1kq5sanx764j4rvbgki5ljsbc6ygip716b4c17s6mf88d5d4";
    };
    latest = {
      version = "2.1.14";
      sha256 = "1642fwz6fc1dj84nvhdi47q6hx2z0mn1cgpph3dybf6s58ld403y";
    };
  };
}
