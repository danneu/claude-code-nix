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
    version = "2.1.149";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "659d1a65cfd439bb43708fd1cfbe8346b59370a27f7f60f789e05f4604dee9a5";
      };
      "x86_64-linux" = {
        sha256 = "2959c02a605a616fb39cfa23e2f76356b254699dfdd5e5e838fcfb0414e48984";
      };
      "aarch64-linux" = {
        sha256 = "ab11cb6a2c43ef2dd1e68244b2dd470af07de163419a8b073a9b0e157ef64fc3";
      };
    };
  };

  latest = {
    version = "2.1.158";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "536a0517fa64d48ddcbc8eb511a3d08027d47e06d148872332a8041d72c22768";
      };
      "x86_64-linux" = {
        sha256 = "dd27008acd42700bac5762652ec83ff604bf9ae0786d4dde55d57a6866017fbe";
      };
      "aarch64-linux" = {
        sha256 = "98807675a3ed5b7b775f7eaa81eda32cba2810b97e9db9f6f98d7bd658cec00e";
      };
    };
  };

}
