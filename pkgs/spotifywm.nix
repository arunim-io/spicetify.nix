{
  src,
  lib,
  stdenv,
  libX11,
  lndir,
  makeBinaryWrapper,
  spotify,
}:
stdenv.mkDerivation {
  inherit src;

  pname = "spotifywm";
  version = src.shortRev;

  nativeBuildInputs = [
    makeBinaryWrapper
    lndir
  ];

  buildInputs = [ libX11 ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out

    lndir -silent ${spotify} $out

    install -Dm644 spotifywm.so $out/lib/spotifywm.so

    wrapProgram $out/bin/spotify --suffix LD_PRELOAD : "$out/lib/spotifywm.so"

    runHook postInstall
  '';

  meta = {
    homepage = "https://github.com/dasJ/spotifywm";
    description = "Wrapper around Spotify that correctly sets class name before opening the window";
    license = lib.licenses.mit;
    platforms = lib.platforms.linux;
    mainProgram = "spotify";
  };
}
