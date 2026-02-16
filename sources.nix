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
    version = "2.1.37";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "00ed10afb7a562440773de31284568ce9c33385d79d3a912a12af262aefd130e";
      };
      "x86_64-linux" = {
        sha256 = "f967a4d06e16a32436b6329e2dbed459a9fa4d34f07635a1fb271b74f706c91f";
      };
      "aarch64-linux" = {
        sha256 = "d725cc73060f400a7ac03a769969397daec9d411dbd5b1c7bb1fa60427bf657e";
      };
    };
  };

  latest = {
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

  # npm package versions
  npm = {
    stable = {
      version = "2.1.37";
      sha256 = "0nlfx7rm9n5a5vidhr43ii9fn2jjr2rwhy89fsn7w3kk3cvsn5i4";
    };
    latest = {
      version = "2.1.44";
      sha256 = "15zwakq45lc3w0ww0ymhm2yzid95p1wypfkivd8njd5xdwnaanlw";
    };
  };
}
