{ pkgs }:
let
  inherit (pkgs) callPackage;
in
{
  mkPackage = callPackage ./mkPackage.nix { };
  mkTheme = callPackage ./mkTheme.nix { };
  mkExtension = callPackage ./mkExtension.nix { };
}
