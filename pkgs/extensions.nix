{
  pkgs,
  spiceLib,
  input,
  ...
}:
let
  inherit (pkgs.lib) removeSuffix;

  officialExtensionNames = builtins.map (name: removeSuffix ".js" name) (
    builtins.attrNames (builtins.readDir "${input}/Extensions")
  );
  extensions = builtins.map (
    name:
    let
      extensionName = builtins.replaceStrings [ "+" ] [ "-plus" ] name;
    in
    {
      name = "spicetify-extension-${extensionName}";

      value = spiceLib.builders.mkExtension {
        src = "${input}/Extensions/";
        name = extensionName;
        version = input.shortRev;
      };
    }
  ) officialExtensionNames;
in
builtins.listToAttrs extensions
