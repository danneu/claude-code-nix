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
    version = "2.1.274";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "3509913f9d1576316c8845b88837f8fd3bbbcf26625833ac82cfb6b8985da94a";
      };
      "x86_64-linux" = {
        sha256 = "15e2d05148f801b5774032faad87e624ecd172e9903288bda448b892eb58fa07";
      };
      "aarch64-linux" = {
        sha256 = "2db904daea17addff9de557ba26a725916888aa7b546e2c5dd989c20d9d49ab3";
      };
    };
  };

  latest = {
    version = "2.1.282";
    platforms = {
      "aarch64-darwin" = {
        sha256 = "fcfd837103965c64de34a6b9b94370d77a347ea71819715a27d5f0ef01775ea4";
      };
      "x86_64-linux" = {
        sha256 = "3afe8535c0cc33f0e24f7b25dab7a1727b8b592196f8496a8bc302ba2161eed3";
      };
      "aarch64-linux" = {
        sha256 = "6764ffc39e9fed425a493ff61ea28506d1ba83996ce81a48d1177dbb393419c9";
      };
    };
  };

}
