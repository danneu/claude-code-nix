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
    version = "2.1.84";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c02d911ff13f8ceccb1f6662bf211f3cd9f29d5a46f031c3cc40654eb759aa29";
      };
      "x86_64-linux" = {
        sha256 = "c6872aa8db94f303bc6a4482664e40d3288dfc989c89ba268473ed32e3055878";
      };
      "aarch64-linux" = {
        sha256 = "5c868174b44439e51c74ff084c306856c41779615250d5bbdaa5d10056362814";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.84";
      sha256 = "01mnfk9ji9z5gyzkbmfzv4cjxq66gfwff7nmddzbbj6gja2l3pfd";
    };
    latest = {
      version = "2.1.91";
      sha256 = "0arybdx6yx21f2rfl12agy1j8bgfym412x038zkx3ynnf7kxmd2g";
    };
  };
}
