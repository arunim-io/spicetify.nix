{ pkgs, input }:
let
  inherit (pkgs) lib stdenv spicetify-cli;

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
  themes = builtins.map (
    themeName:
    let
      name = "spicetify-theme-${themeName}";
    in
    {
      inherit name;

      value = stdenv.mkDerivation {

        pname = name;
        version = input.shortRev;
        src = "${input}/${name}";

        buildInputs = [ spicetify-cli ];

        dontUnpack = true;

        installPhase = ''
          set -e

          DIR="$out/share/spicetify/Themes/${themeName}/"

          mkdir -p "$DIR"
          cp -r ${input}/${themeName}/*.{css,ini} "$DIR"
        '';

        doCheck = true;
        checkphase = ''
          spicetify config current_theme Default
          spicetify apply
        '';
      };
    }
  ) officialThemeNames;
in
builtins.listToAttrs themes
