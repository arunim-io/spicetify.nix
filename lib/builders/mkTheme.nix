{ callPackage, ... }:
attrs@{
  name,
  src,
  fileNames ? [ ],
  ...
}:
let
  mkPackage = callPackage ./mkPackage.nix { };

  userCssExists = builtins.pathExists "${src}/user.css";
  colorIniExists = builtins.pathExists "${src}/color.ini";
  fileNames =
    (
      if userCssExists && colorIniExists then
        [
          "color.ini"
          "user.css"
        ]
      else if userCssExists then
        [ "user.css" ]
      else if colorIniExists then
        [ "color.ini" ]
      else
        [ ]
    )
    ++ fileNames;
in
mkPackage (
  {
    inherit name src fileNames;
    type = "theme";
  }
  // attrs
)
