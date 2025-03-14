{ stdenv, fetchzip }:

stdenv.mkDerivation {
  pname = "monolisa";
  version = "2.015";
  src = fetchzip {
    url = "https://fourdaycreep.com/s/rBnnEYSWCAeeE6f";
    hash = "sha256-SMUIkTZXBKcA7YsE3MkZ7rAyfG61pltighxrjjXxK3M=";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';
}
