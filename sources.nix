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
    version = "2.1.62";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "94f813561519676a95135e3d3631cbc74a14883222af20def6d5040d193cd5e7";
      };
      "x86_64-linux" = {
        sha256 = "d6f0726cb8e94b7a30c243964529ba9135e642c40d2134ca09f5f845071471b4";
      };
      "aarch64-linux" = {
        sha256 = "696c2f2a22a23375e9d7ee26af0aff417cd4a3a8cb704f24e4ba9c74a4c78d37";
      };
    };
  };

  latest = {
    version = "2.1.78";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "0a4939f36bc0194021c56fa5c8470ad84e2282f2f404f1598a940c2044117168";
      };
      "x86_64-linux" = {
        sha256 = "b120a4139a4477a2719aeb0b2c790a5c2fe2d904e47f4e2adf3cab33b342d03a";
      };
      "aarch64-linux" = {
        sha256 = "75cf87465197883df61dcbb187d4ad3fc031bf91927658159929dcd2959542dc";
      };
    };
  };

  # npm package versions
  npm = {
    stable = {
      version = "2.1.62";
      sha256 = "0bnd4pwnb6rbd62j2h969bal45c4nxxhs44895l8n14xzjk21njf";
    };
    latest = {
      version = "2.1.78";
      sha256 = "0f4dm5vpzlza3aflx7bpxk61jm4ix0qyf82dv6r6vm3zbydkwnxr";
    };
  };
}
