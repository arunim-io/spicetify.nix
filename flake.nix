{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    spicetify-themes = {
      url = "github:spicetify/spicetify-themes";
      flake = false;
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      systems,
      spicetify-themes,
    }:
    let
      eachSystem = nixpkgs.lib.genAttrs (import systems);
      packages = eachSystem (
        system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        }
      );
    in
    {
      formatter = eachSystem (system: packages.${system}.nixfmt-rfc-style);

      packages = eachSystem (system: { });

      devShells = eachSystem (system: {
        default = packages.${system}.mkShell { };
      });
    };
}
