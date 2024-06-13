{ stdenv, spicetify-cli, ... }:
{
  extraArgs ? { },
  src,
  version,
  type,
  name,
  fileNames,
  ...
}:
let
  targetDir = "$out/share/spicetify/${type}/${name}";
  targetFiles =
    if (builtins.length fileNames) > 1 then
      "{${builtins.concatStringsSep "," fileNames}}"
    else
      builtins.toString fileNames;
in
stdenv.mkDerivation (
  {
    inherit src version;

    pname = "spicetify-${type}-${name}";

    dontUnpack = true;

    installPhase = ''
      mkdir -p ${targetDir}
      cp -r ${src}/${targetFiles} ${targetDir}
    '';
  }
  // extraArgs
)
