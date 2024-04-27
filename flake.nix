{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    inputs@{
      self,
      flake-parts,
      nixpkgs,
      systems,
    }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      perSystem =
        {
          pkgs,
          system,
          config,
          ...
        }:
        {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };

          formatter = pkgs.nixfmt-rfc-style;

          # libs = pkgs.callPackage ./lib { };

          devShells.default = pkgs.mkShell { packages = [ pkgs.nvfetcher ]; };

          packages = {
            spicetify = pkgs.callPackage ./pkgs { };
            default = config.packages.spicetify;
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
        };

      flake = {
        libs = nixpkgs.legacyPackages.callPackage ./lib { };
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
      };
    };
}
