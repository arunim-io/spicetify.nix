{ callPackage, ... }:
attrs@{
  src,
  name,
  fileNames ? [ ],
  ...
}:
let
  mkPackage = callPackage ./mkPackage.nix { };
in
mkPackage (
  {
    inherit name src;

    type = "extension";
    fileNames = [ "${name}.js" ] ++ fileNames;
  }
  // attrs
)
