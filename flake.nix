{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs@{ flake-parts, nixpkgs, systems, ... }: flake-parts.lib.mkFlake { inherit inputs; } {
    systems = import systems;

    perSystem = { pkgs, system, ... }: {
      _module.args.pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };

      packages.default = pkgs.hello-unfree;
    };
  };
}
