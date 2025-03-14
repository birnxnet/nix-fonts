{ stdenv, fetchzip }:

stdenv.mkDerivation {
  pname = "monolisa";
  version = "2.015";
  src = fetchzip {
    url = "https://fourdaycreep.com/s/rBnnEYSWCAeeE6f/download/monolisa.zip";
    hash = "sha256-H+DhKCNvcA6BL7BCA0klGwjRVb9CLGFxmYEthFExGfI=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
