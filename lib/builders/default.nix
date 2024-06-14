{ pkgs }:
let
  inherit (pkgs) callPackage;
in
{
  mkPackage = callPackage ./package.nix { };
  mkTheme = callPackage ./theme.nix { };
  mkExtension = callPackage ./extension.nix { };
  mkCustomApp = callPackage ./custom-app.nix { };
}
