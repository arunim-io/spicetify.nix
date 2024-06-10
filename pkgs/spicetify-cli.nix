{
  src,
  lib,
  buildGoModule,
  ...
}:

buildGoModule {
  inherit src;

  pname = "spicetify-cli";
  version = src.shortRev;

  vendorHash = "sha256-po0ZrIXtyK0txK+eWGZDEIGMI1/cwyLVsGUVnTaHKP0=";

  ldflags = [ "-s -w" ];

  # used at runtime, but not installed by default
  postInstall = ''
    mv $out/bin/cli $out/bin/spicetify
    ln -s $out/bin/spicetify $out/bin/spicetify-cli

    cp -r ${src}/jsHelper $out/bin/jsHelper
    cp -r ${src}/CustomApps $out/bin/CustomApps
    cp -r ${src}/Extensions $out/bin/Extensions
    cp -r ${src}/Themes $out/bin/Themes
  '';

  doInstallCheck = true;
  installCheckPhase = ''
    $out/bin/spicetify --help > /dev/null
  '';

  meta = with lib; {
    description = "Command-line tool to customize Spotify client";
    homepage = "https://github.com/spicetify/cli/";
    license = licenses.lgpl21Plus;
    mainProgram = "spicetify";
  };
}
