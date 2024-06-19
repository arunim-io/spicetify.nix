{ inputs }:
{
  lib,
  pkgs,
  config,
  ...
}:
let
  cfg = config.programs.spicetify;

  inherit (lib)
    mkEnableOption
    mkIf
    mkOption
    types
    ;

  spiceLib = import ./lib { inherit pkgs; };
  spicePkg = builtins.attrNames (import ./pkgs { inherit pkgs spiceLib inputs; });
in
{
  options.programs.spicetify = {
    enable = mkEnableOption "Spicetify";

    useSpotifywm = mkEnableOption "Spotifywm for using with a window manager";

    spotifyPackage = mkOption {
      type = types.package;
      default = pkgs.spotify;
      description = "The package containing Spotify.";
    };

    spicetifyPackage = mkOption {
      type = types.package;
      default = pkgs.spicetify-cli;
      description = "The package containing spicetify-cli.";
    };

    theme = {
      enable = mkEnableOption "Spicetify theme";

      package = mkOption {
        type = types.package;
        default = pkgs.spicetify-theme-Default;
        description = "The package containing spicetify theme";
      };

      colorscheme = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "The colorscheme of the specified theme, if available.";
      };
    };
  };

  config = mkIf cfg.enable (
    let
      spotify = if cfg.useSpotifywm then pkgs.spotifywm else cfg.spotifyPackage;
    in
    {
      home.packages = [
        spotify
        cfg.spicetifyPackage
      ];
    }
  );
}
