{
  description = "Nix package for Claude Code - AI coding assistant in your terminal";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    let
      supportedSystems = [ "aarch64-darwin" "x86_64-linux" "aarch64-linux" ];

      overlay = final: prev: {
        # Native binary variants
        claude-code = final.callPackage ./native.nix { channel = "latest"; };
        claude-code-stable = final.callPackage ./native.nix { channel = "stable"; };
        # npm variants
        claude-code-npm = final.callPackage ./npm.nix { channel = "latest"; };
        claude-code-npm-stable = final.callPackage ./npm.nix { channel = "stable"; };
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
          # Native binary packages
          native-latest = pkgs.claude-code;
          native-stable = pkgs.claude-code-stable;
          # npm packages
          npm-latest = pkgs.claude-code-npm;
          npm-stable = pkgs.claude-code-npm-stable;
          # Aliases for backwards compatibility
          npm = pkgs.claude-code-npm;
          # No default - forces explicit choice between native/npm
        };

        # Tests for smartmerge function
        checks = import ./tests { inherit pkgs; };
      }) // {
        overlays.default = overlay;
        homeManagerModules.default = import ./hm-module.nix;
      };
}
