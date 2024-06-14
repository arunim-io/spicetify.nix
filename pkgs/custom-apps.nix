{ spiceLib, input, ... }:
let
  dir = "${input}/CustomApps";
in
builtins.listToAttrs (
  builtins.map (name: {
    name = "spicetify-custom-app-${name}";

    value = spiceLib.builders.mkCustomApp {
      inherit name;

      src = "${dir}/${name}";
      version = input.shortRev;
    };
  }) (builtins.attrNames (builtins.readDir dir))
)
