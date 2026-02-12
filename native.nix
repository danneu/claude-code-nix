# Claude Code Package (Official Native Binary)
#
# This package installs Claude Code's official native binary.
# Unlike the npm-based installation, this is a self-contained binary
# that doesn't require Node.js.
#
# Binary source: https://storage.googleapis.com/claude-code-dist-.../claude-code-releases

{ lib
, stdenv
, fetchurl
, makeWrapper
, channel ? "latest"  # "stable" or "latest"
}:

let
  sources = import ./sources.nix;
  channelSrc = sources.${channel} or (throw "Unknown channel: ${channel}. Use 'stable' or 'latest'.");
  version = channelSrc.version;

  # Map Nix platform to Claude platform name
  platformMap = {
    "aarch64-darwin" = "darwin-arm64";
    "x86_64-darwin" = "darwin-x64";
    "x86_64-linux" = "linux-x64";
    "aarch64-linux" = "linux-arm64";
  };

  system = stdenv.hostPlatform.system;
  claudePlatform = platformMap.${system} or (throw "Unsupported platform: ${system}");
  platformSrc = channelSrc.platforms.${system} or (throw "Platform ${system} not available for channel ${channel}");

  claudeBinary = fetchurl {
    url = "https://storage.googleapis.com/claude-code-dist-86c565f3-f756-42ad-8dfa-d59b1c096819/claude-code-releases/${version}/${claudePlatform}/claude";
    inherit (platformSrc) sha256;
  };

in
stdenv.mkDerivation {
  pname = "claude-code";
  inherit version;

  dontUnpack = true;

  nativeBuildInputs = [ makeWrapper ];

  # Disable fixup phases that can strip/modify the binary.
  # Nix's strip and patchelf phases truncate the appended Bun SEA
  # payload, leaving only the bare Bun runtime.
  dontStrip = true;
  dontPatchELF = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin $out/libexec

    # Copy the binary to libexec
    cp ${claudeBinary} $out/libexec/claude
    chmod +x $out/libexec/claude

    # Create wrapper as 'claude'
    makeWrapper $out/libexec/claude $out/bin/claude \
      --set DISABLE_AUTOUPDATER 1 \
      --set CLAUDE_EXECUTABLE_PATH "$out/bin/claude"

    runHook postInstall
  '';

  meta = with lib; {
    description = "Claude Code - AI coding assistant in your terminal (official binary, ${channel} channel)";
    homepage = "https://claude.ai/code";
    license = licenses.unfree;
    platforms = builtins.attrNames channelSrc.platforms;
    mainProgram = "claude";
  };
}
