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
    version = "2.1.12";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "40be59519a84bd35eb1111aa46f72aa6b3443866d3f6336252a198fdcaefbbe5";
      };
      "x86_64-linux" = {
        sha256 = "3fe979215489dc1b31463fadf95ed2d2d5473a9969447bb7a46431f4578847d4";
      };
      "aarch64-linux" = {
        sha256 = "e214b1d3b5afd4cd2de9177359001d41a3eb98cb1e3665fe97edc592f5aa132f";
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
      version = "2.1.12";
      sha256 = "1186gyxr7pqninm796hxxiwqvky9jwi9dpym9xmn103gwgxq9lln";
    };
  };
}
