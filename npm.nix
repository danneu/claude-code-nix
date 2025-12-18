# Claude Code Package (npm version)
#
# This package installs Claude Code via npm with a bundled Node.js runtime.
# Unlike the native binary, this version requires Node.js but may work better
# on some systems that experience CPU issues with the native binary.
#
# Package source: https://www.npmjs.com/package/@anthropic-ai/claude-code

{ lib
, stdenv
, fetchurl
, nodejs_22
, cacert
, bash
}:

let
  sources = import ./sources.nix;
  version = sources.npm.version;

  # Pre-fetch the npm package as a Fixed Output Derivation
  # This allows network access during fetch phase for sandbox compatibility
  claudeCodeTarball = fetchurl {
    url = "https://registry.npmjs.org/@anthropic-ai/claude-code/-/claude-code-${version}.tgz";
    inherit (sources.npm) sha256;
  };
in
stdenv.mkDerivation {
  pname = "claude-code-npm";
  inherit version;

  # Don't try to unpack a source tarball - we'll handle it in buildPhase
  dontUnpack = true;

  # Build dependencies
  nativeBuildInputs = [
    nodejs_22   # Use Node.js v22 LTS for compatibility
    cacert      # SSL certificates for npm
  ];

  buildPhase = ''
    # Create a temporary HOME for npm to use during build
    export HOME=$TMPDIR
    mkdir -p $HOME/.npm

    # Configure npm to use Nix's SSL certificates
    export SSL_CERT_FILE=${cacert}/etc/ssl/certs/ca-bundle.crt
    export NODE_EXTRA_CA_CERTS=$SSL_CERT_FILE

    # Tell npm where to find certificates
    ${nodejs_22}/bin/npm config set cafile $SSL_CERT_FILE

    # Configure npm to work offline
    ${nodejs_22}/bin/npm config set offline true

    # Install claude-code from the pre-fetched tarball
    # This avoids network access during build phase
    ${nodejs_22}/bin/npm install -g --prefix=$out ${claudeCodeTarball}
  '';

  installPhase = ''
    # The npm-generated binary has issues with env and paths
    # Remove it so we can create our own wrapper
    rm -f $out/bin/claude

    # Create a wrapper script that:
    # 1. Uses NODE_PATH to find modules without changing directory
    # 2. Runs claude from the user's current directory
    # 3. Passes all arguments through
    # 4. Preserves the consistent path for settings
    mkdir -p $out/bin
    cat > $out/bin/claude << 'WRAPPER_EOF'
#!${bash}/bin/bash
# Set NODE_PATH to find the claude-code modules
export NODE_PATH="$out/lib/node_modules"

# Set a consistent executable path for claude to prevent permission resets
# This makes macOS and claude think it's always the same binary
export CLAUDE_EXECUTABLE_PATH="$HOME/.local/bin/claude"

# Disable automatic update checks since updates should go through Nix
export DISABLE_AUTOUPDATER=1

# Run claude from current directory
exec ${nodejs_22}/bin/node --no-warnings --enable-source-maps "$out/lib/node_modules/@anthropic-ai/claude-code/cli.js" "$@"
WRAPPER_EOF
    chmod +x $out/bin/claude

    # Replace $out placeholder with the actual output path
    substituteInPlace $out/bin/claude \
      --replace '$out' "$out"
  '';

  meta = with lib; {
    description = "Claude Code - AI coding assistant in your terminal (npm version)";
    homepage = "https://claude.ai/code";
    license = licenses.unfree;
    platforms = platforms.all;
    mainProgram = "claude";
  };
}
