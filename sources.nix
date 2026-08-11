# Version sources for Claude Code
#
# To update:
#   - Native binary: ./scripts/update-native.sh
#
# Channels:
#   - stable: Production-ready releases
#   - latest: Most recent release (may be ahead of stable)

{
  stable = {
    version = "2.1.221";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "7a181f36ed0fc4fbac6cee4ecf2b615eff93d8b434221fff5d7c878dc5ebf380";
      };
      "x86_64-linux" = {
        sha256 = "60db8e88d42c24b5199c92cfd56ec88370c510c3789c6f364af748354f087ada";
      };
      "aarch64-linux" = {
        sha256 = "d3c59d6bcc4adcf4cd85abca3bc13fa1131a34cb32f982bdf030d83a3b11e700";
      };
    };
  };

  latest = {
    version = "2.1.228";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "43484b1352cef03a08346f36ef0437755b1aad646ab9313ce187857b794b7247";
      };
      "x86_64-linux" = {
        sha256 = "d535985e6941a3eb00179ccd7f52ceb0c6623a0305a518ebc4e6514f84a94c99";
      };
      "aarch64-linux" = {
        sha256 = "2664006219497bf7021ac43156519cd42eda64ceb2a66f434ecab83e7831f942";
      };
    };
  };

}
