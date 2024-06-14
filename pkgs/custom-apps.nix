{ spiceLib, input, ... }:
let
  officialCustomAppNames = builtins.attrNames (builtins.readDir "${input}/CustomApps");

  customApps = builtins.map (
    customAppName:
    let
      manifest = builtins.fromJSON (
        builtins.readFile "${input}/CustomApps/${customAppName}/manifest.json"
      );
    in
    {
      name = "spicetify-custom-app-${customAppName}";

      value = spiceLib.builders.mkPackage {
        src = "${input}/CustomApps/";
        name = customAppName;
        version = input.shortRev;
        type = "custom-app";
        fileNames = [
          "manifest.json"
          "style.css"
          "index.js"
        ] ++ manifest.subfiles;
      };
    }
  ) officialCustomAppNames;
in
builtins.listToAttrs customApps
