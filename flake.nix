{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    spicetify-cli = {
      url = "github:spicetify/cli";
      flake = false;
    };
    spicetify-themes = {
      url = "github:spicetify/spicetify-themes";
      flake = false;
    };
    spicetify-marketplace = {
      url = "github:spicetify/marketplace/dist";
      flake = false;
    };
    spotifywm = {
      url = "github:dasJ/spotifywm";
      flake = false;
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      parts,
      systems,
      spotifywm,
      spicetify-cli,
      spicetify-themes,
      ...
    }:
    parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      imports = [ parts.flakeModules.easyOverlay ];

      flake = {
        lib.mkSpiceLib = pkgs: import ./lib { inherit pkgs; };

        homeManagerModules.default = import ./module.nix { inherit inputs; };
        homeManagerModule = self.homeManagerModules.default;
      };

      perSystem =
        {
          config,
          pkgs,
          system,
          ...
        }:
        let
          spiceLib = self.lib.mkSpiceLib pkgs;
        in
        {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };

          overlayAttrs = builtins.removeAttrs config.packages [ "default" ];

          packages = {
            default = config.packages.spicetify-cli;
          } // (import ./pkgs { inherit pkgs spiceLib inputs; });
        };
    };
}
