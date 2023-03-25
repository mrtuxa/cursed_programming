with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "randomnumber";
  src = ./.;


  buildPhase = "c++ -o main main.cpp --verbose";

  installPhase = ''
    mkdir bin/
    cp main bin/
    ./bin/main
    mkdir -p $out/bin
    cp bin/main $out/bin
    rm -rvf $out/
  '';
}
