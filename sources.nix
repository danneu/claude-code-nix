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
    version = "2.1.80";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "dbc25d38f0da28709fe22f248b08f80e73f2e43170dbedeff47bd8b97db8e737";
      };
      "x86_64-linux" = {
        sha256 = "49fa3cf7aaab9d54066e85eaa11911b7d25c629a82af323a76b22db2029d4fa2";
      };
      "aarch64-linux" = {
        sha256 = "82897d5ecd55a466a47161b21b417075e8149ca816001ba15796ff05371afdd5";
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
      version = "2.1.80";
      sha256 = "0l1cs3sx53m7qcjwb5hbqyvx7a8557pzrgknk062p9qzid99z2q2";
    };
  };
}
