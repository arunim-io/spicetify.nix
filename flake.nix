{
  description = "A nix flake that provides a home-manager module to configure spicetify with.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    {
      lib = nixpkgs.legacyPackages.callPackage ./lib { };

      homeManagerModules = {
        spicetify = import ./module.nix { isNixOSModule = false; };
        default = self.homeManagerModules.spicetify;
      };

      nixosModules = {
        spicetify = import ./module.nix { isNixOSModule = true; };
        default = self.nixosModules.spicetify;
      };

      # nice aliases
      homeManagerModule = self.homeManagerModules.default;
      nixosModule = self.nixosModules.default;
    }
    //
      # legacy stuff thats just for x86_64 linux
      flake-utils.lib.eachSystem
        (
          let
            inherit (flake-utils.lib) system;
          in
          [
            system.aarch64-linux
            system.x86_64-linux
          ]
        )
        (
          system:
          let
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            };
          in
          {
            packages = {
              spicetify = pkgs.callPackage ./pkgs { };
              default = self.packages.${system}.spicetify;
            };

            checks = {
              all-tests = pkgs.callPackage ./tests { };
              minimal-config = pkgs.callPackage ./tests/minimal-config.nix { };
              all-for-theme = pkgs.callPackage ./tests/all-for-theme.nix { };
              apps = pkgs.callPackage ./tests/apps.nix { };
              default = self.checks.${system}.all-tests;
              all-exts-and-apps = builtins.mapAttrs (_: value: self.checks.${system}.all-for-theme value) (
                builtins.removeAttrs (pkgs.callPackage ./pkgs { }).themes [
                  "override"
                  "overrideDerivation"
                ]
              );
            };

            formatter = pkgs.nixfmt-rfc-style;

            devShells = {
              default = pkgs.mkShell { packages = [ pkgs.nvfetcher ]; };
            };
          }
        );
}
