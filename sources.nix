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
    version = "2.1.222";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "c66a6cc6fa2e8145bb1a6e77831f2caf4b83690ff04650500dfa6e2c05ca997c";
      };
      "x86_64-linux" = {
        sha256 = "10caae8f22b915c26bfff0e013a4d45608c4f1ae287583626569156f447730e5";
      };
      "aarch64-linux" = {
        sha256 = "a04be0a8d7fe0259571ab7411d51d85658d71a4a26ce62b60c908290372e6016";
      };
    };
  };

  latest = {
    version = "2.1.229";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "d732f0ba0a539c58c2ffcaef06ed03b4e523726f0cb6cc27b3a5b7e7ae0a7a21";
      };
      "x86_64-linux" = {
        sha256 = "200338139a3df04a9ad22233837d1fb53fb6dffa21cd82e47559bfaa115acc1b";
      };
      "aarch64-linux" = {
        sha256 = "ba53130acbda3ddb00b3dd5641f11733867f5d837a258b7e6ccef4927cc1a509";
      };
    };
  };

}
