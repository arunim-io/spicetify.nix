{
  pkgs,
  input,
  spiceLib,
}:
let
  inherit (pkgs) lib;
in
builtins.listToAttrs (
  builtins.map
    (name: {
      name = "spicetify-theme-${name}";

      value = spiceLib.builders.mkTheme {
        inherit name;

        src = "${input}/${name}";
        version = input.shortRev;
      };
    })
    (

      lib.lists.subtractLists
        [
          ".github"
          "_Extra"
        ]
        (
          builtins.filter (name: lib.pathIsDirectory "${input}/${name}") (
            builtins.attrNames (builtins.readDir "${input}")
          )
        )
    )
)
