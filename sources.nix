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
    version = "2.1.79";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "839b876b084f1859b838f452814c94a1c0ba1556b7c0e363e30542d281918664";
      };
      "x86_64-linux" = {
        sha256 = "35561c56625d25507f4531ff8e88575df3a5e3574cffacffddcd48d2814d3c49";
      };
      "aarch64-linux" = {
        sha256 = "cc2090a519df805819d6e0d8a49584fe7d527cc58c34aad894fbfe7a5df8a5bf";
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
      version = "2.1.79";
      sha256 = "0qih1dc3x3hzp6y4s91n48qsxmn3facdq0x6fnvz3zqmg3ybg1kl";
    };
  };
}
