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
      nixpkgs,
      parts,
      systems,
      spotifywm,
      spicetify-cli,
      ...
    }:
    parts.lib.mkFlake { inherit inputs; } {
      systems = import systems;

      imports = [ parts.flakeModules.easyOverlay ];

      perSystem =
        {
          config,
          pkgs,
          system,
          ...
        }:
        {
          _module.args.pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };

          overlayAttrs = builtins.removeAttrs config.packages [ "default" ];

          packages = {
            default = config.packages.spicetify-cli;
            spicetify-cli = pkgs.callPackage ./pkgs/spicetify-cli.nix { src = spicetify-cli; };
            spotifywm = pkgs.callPackage ./pkgs/spotifywm.nix { src = spotifywm; };
          };
        };
    };
}
