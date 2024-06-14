{ callPackage, ... }:
attrs@{
  src,
  name,
  fileNames ? [ ],
  ...
}:
let
  mkPackage = callPackage ./package.nix { };
in
mkPackage (
  {
    inherit name src;

    type = "extension";
    fileNames = [ "${name}.js" ] ++ fileNames;
  }
  // attrs
)
