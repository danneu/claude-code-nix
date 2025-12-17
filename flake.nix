{
  description = "Nix package for Claude Code (official native binary) - AI coding assistant in your terminal";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      supportedSystems = [ "aarch64-darwin" "x86_64-linux" "aarch64-linux" ];

      overlay = final: prev: {
        claude-code = final.callPackage ./package.nix { channel = "latest"; };
        claude-code-stable = final.callPackage ./package.nix { channel = "stable"; };
      };
    in
    flake-utils.lib.eachSystem supportedSystems (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ overlay ];
        };
      in
      {
        packages = {
          default = pkgs.claude-code;
          stable = pkgs.claude-code-stable;
        };
      }) // {
        overlays.default = overlay;
        homeManagerModules.default = import ./hm-module.nix;
      };
}
