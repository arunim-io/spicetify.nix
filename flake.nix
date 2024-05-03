{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs =
    {
      self,
      nixpkgs,
      systems,
      ...
    }:
    let
      eachSystem = nixpkgs.lib.genAttrs (import systems);
      packages = eachSystem (
        system:
        import nixpkgs {
          inherit system;
          config.allowUnfree = true;

          overlays = [ self.overlays.default ];
        }
      );
    in
    {
      formatter = eachSystem (system: packages.${system}.nixfmt-rfc-style);

      overlays.default = _: pkgs: { };

      packages = eachSystem (system: self.overlays.default null packages.${system});

      devShells = eachSystem (system: {
        default = packages.${system}.mkShell { };
      });
    };
}
