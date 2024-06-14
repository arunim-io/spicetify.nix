{ spiceLib, input, ... }:
let
  officialCustomAppNames = builtins.attrNames (builtins.readDir "${input}/CustomApps");

  customApps = builtins.map (customAppName: {
    name = "spicetify-custom-app-${customAppName}";

    value = spiceLib.builders.mkCustomApp {
      src = "${input}/CustomApps/${customAppName}";
      name = customAppName;
      version = input.shortRev;
    };
  }) officialCustomAppNames;
in
builtins.listToAttrs customApps
