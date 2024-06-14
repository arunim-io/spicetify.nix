{ callPackage, ... }:
attrs@{
  src,
  name,
  fileNames ? [ ],
  ...
}:
let
  mkPackage = callPackage ./package.nix { };

  manifest = builtins.fromJSON (builtins.readFile "${src}}/manifest.json");
in
mkPackage (
  {
    inherit name src;

    type = "custom-app";
    fileNames = [
      "manifest.json"
      "style.css"
      "index.js"
    ] ++ manifest.subfiles;
  }
  // attrs
)
