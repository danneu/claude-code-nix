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
    version = "2.1.91";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7433d76d3ec5d223a340e21d7a05f3d481d89999f228113168ad5d64c66fd376";
      };
      "x86_64-linux" = {
        sha256 = "01b74e1b02e3330940b3526d2f6e00bf32f7fd9e6b3861be6a61e01cfd7296e6";
      };
      "aarch64-linux" = {
        sha256 = "dddba100b352ea6d06aa7e036d5afe49749edddd1309a4aa22e47049fafcadf9";
      };
    };
  };

  latest = {
    version = "2.1.101";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "a6ddd3a7ddd9a51b8ad3b0585875d383024a37cf2dde4c8cabde775b74512d74";
      };
      "x86_64-linux" = {
        sha256 = "d064b4f28cf0950f1f9c355b471fdefaae6c00cda1a8ea895c7518330cee0cd8";
      };
      "aarch64-linux" = {
        sha256 = "bb30108c64a29600fcc71e94c4843ce2155603d7d38e6a6825c472438afd0561";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.91";
      sha256 = "0arybdx6yx21f2rfl12agy1j8bgfym412x038zkx3ynnf7kxmd2g";
    };
    latest = {
      version = "2.1.101";
      sha256 = "0n8l1jmfq9qjg6qc6yvaqjii8plx6sqjlvmxkgmz3ljl58ndfrf1";
    };
  };
}
