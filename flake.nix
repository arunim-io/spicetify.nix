{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
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
    {
      self,
      nixpkgs,
      systems,
      spicetify-cli,
      spotifywm,
      ...
    }:
    let
      eachSystem =
        func:
        nixpkgs.lib.genAttrs (import systems) (
          system:
          func (
            import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            }
          )
        );
    in
    {
      formatter = eachSystem (pkgs: pkgs.nixfmt-rfc-style);

      overlays.default = final: prev: {
        spicetify-cli = prev.callPackage ./pkgs/spicetify-cli.nix { src = spicetify-cli; };
        spotifywm = prev.callPackage ./pkgs/spotifywm.nix { src = spotifywm; };
      };

      packages = eachSystem (pkgs: self.overlays.default null pkgs);

      devShells = eachSystem (pkgs: {
        default = pkgs.mkShell { };
      });
    };
}
