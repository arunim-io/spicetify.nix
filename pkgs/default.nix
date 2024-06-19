{
  inputs,
  pkgs,
  spiceLib,
  ...
}:
{
  spicetify-cli = pkgs.callPackage ./pkgs/spicetify-cli.nix { src = inputs.spicetify-cli; };
  spotifywm = pkgs.callPackage ./pkgs/spotifywm.nix { src = inputs.spotifywm; };
}
// (import ./themes.nix {
  inherit pkgs spiceLib;
  input = inputs.spicetify-themes;
})
// (import ./extensions.nix {
  inherit pkgs spiceLib;
  input = inputs.spicetify-cli;
})
// (import ./custom-apps.nix {
  inherit pkgs spiceLib;
  input = inputs.spicetify-cli;
})
