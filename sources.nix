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
    version = "2.1.4";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "dbd88024fe621e45452fbe2d17e13803f46df2d4e3729cf55ace0edb7c6f9565";
      };
      "x86_64-linux" = {
        sha256 = "de877bba3abc9b3b2fa2290194d4d78edb2aecfdfea7cf86419420571b30eb1d";
      };
      "aarch64-linux" = {
        sha256 = "938e2da36bec5723195fa18c28d7de44dcab5c4221f9555e84dae3edd892ee7a";
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
      version = "2.1.4";
      sha256 = "0wfpig6s5zwxzf2rhsh2n9jvn6b969d8zw3p9qpzz36mmgsc64c1";
    };
  };
}
