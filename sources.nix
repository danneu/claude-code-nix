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
    version = "2.1.92";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "6d1b9657727dce81332b3cda11bfe0a8c83e2392e3c062a31022e10b0e71cdd1";
      };
      "x86_64-linux" = {
        sha256 = "e22324514967ff2d5e9f91f0ee37e4675bf8b6dfec27fafb19cb25cc5b23fcaf";
      };
      "aarch64-linux" = {
        sha256 = "08deb3d56477496eb92e624f492e25b123f4527dd5674f71afff58a48eccd953";
      };
    };
  };

  latest = {
    version = "2.1.105";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "474623fdb2d372bc78b2c3dd13aa43b111564f750cbaa79cd584739e72e43153";
      };
      "x86_64-linux" = {
        sha256 = "747140e2776ed3af1324f2501eec217b66f20f66af5042e4cf04f5e10d2500ca";
      };
      "aarch64-linux" = {
        sha256 = "f51f97ec3d7b75af16837a92b0a489b8b0a7209f91dc6522958fb25b093be6ea";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.92";
      sha256 = "0iwkfjb3nq95b9iz1hng2i3vdcdb2aph35jmaccagcz62vwqby7z";
    };
    latest = {
      version = "2.1.105";
      sha256 = "127vr9svc2gvhhl8fks5fhy814yqggzaxrap29m23pfv9xlj085l";
    };
  };
}
