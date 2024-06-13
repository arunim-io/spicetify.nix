{ callPackage, ... }:
attrs@{ src, ... }:
let
  mkPackage = callPackage ./mkPackage.nix { };

  userCssExists = builtins.pathExists "${src}/user.css";
  colorIniExists = builtins.pathExists "${src}/color.ini";
  fileNames =
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
      [ ];
in
mkPackage (
  {
    inherit src fileNames;
    type = "theme";
  }
  // attrs
)
