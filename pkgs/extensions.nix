{
  pkgs,
  spiceLib,
  input,
  ...
}:
let
  inherit (pkgs.lib) removeSuffix;

  dir = "${input}/Extensions";
in
builtins.listToAttrs (
  builtins.map (
    name:
    let
      extensionName = builtins.replaceStrings [ "+" ] [ "-plus" ] name;
    in
    {
      name = "spicetify-extension-${extensionName}";

      value = spiceLib.builders.mkExtension {
        src = dir;
        name = extensionName;
        version = input.shortRev;
      };
    }
  ) (builtins.map (name: removeSuffix ".js" name) (builtins.attrNames (builtins.readDir dir)))
)
