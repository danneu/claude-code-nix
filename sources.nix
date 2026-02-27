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
    version = "2.1.44";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "03cb80fe89e645f465a11b519fc31bd4295c30d33f47bd84be5a018fffd7a4c7";
      };
      "x86_64-linux" = {
        sha256 = "090ed3f06be51388bc511f90214484891432c160349c9c3fc6a131001c763381";
      };
      "aarch64-linux" = {
        sha256 = "335f440cfa4c3b020e79896a00bfb68376c6efb11051c7e6736732acdc74d6ee";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.44";
      sha256 = "15zwakq45lc3w0ww0ymhm2yzid95p1wypfkivd8njd5xdwnaanlw";
    };
    latest = {
      version = "2.1.62";
      sha256 = "0bnd4pwnb6rbd62j2h969bal45c4nxxhs44895l8n14xzjk21njf";
    };
  };
}
