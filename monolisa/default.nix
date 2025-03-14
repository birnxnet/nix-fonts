{ stdenv, fetchzip }:

stdenv.mkDerivation {
  pname = "monolisa";
  version = "2.015";
  src = fetchzip {
    url = "https://fourdaycreep.com/s/rBnnEYSWCAeeE6f/download/monolisa.zip";
    hash = "sha256-Vz78eXMRlft9ZZHD0L0Qh6u2GB7c4E6uy+Dh77uFKG0=";
    stripRoot = true;
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
