with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "randomnumber";
  src = ./.;


  buildPhase = "make";

  installPhase = ''
    mkdir bin/
    cp main bin/
    ./bin/main
    mkdir -p $out/bin
    cp bin/main $out/bin
  '';
}
