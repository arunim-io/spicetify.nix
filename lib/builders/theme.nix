{ callPackage, ... }:
attrs@{
  name,
  src,
  fileNames ? [ ],
  ...
}:
let
  package = callPackage ./package.nix { };

  fileNames =
    let
      colorIniExists = builtins.pathExists "${src}/color.ini";
      userCssExists = builtins.pathExists "${src}/user.css";
    in
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
package (
  {
    inherit name src fileNames;
    type = "theme";
  }
  // attrs
)
