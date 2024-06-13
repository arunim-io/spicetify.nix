{
  pkgs,
  input,
  spiceLib,
}:
let
  inherit (pkgs) lib;

  officialThemeNames =
    lib.lists.subtractLists
      [
        ".github"
        "_Extra"
      ]
      (
        builtins.filter (name: lib.pathIsDirectory "${input}/${name}") (
          builtins.attrNames (builtins.readDir "${input}")
        )
      );
  themes = builtins.map (themeName: {
    name = "spicetify-theme-${themeName}";

    value = spiceLib.builders.mkTheme {
      src = "${input}/${themeName}";
      name = themeName;
      version = input.shortRev;
    };
  }) officialThemeNames;
in
builtins.listToAttrs themes
