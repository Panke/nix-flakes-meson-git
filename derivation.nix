{ lib, ldc, stdenv, pkgconfig, meson, zeromq, ninja, pkg-config, git, ... }:
stdenv.mkDerivation rec {
  name = "test-${version}";
  version = "0.0.1";
  src = ./.;
  nativeBuildInputs = [ zeromq meson ninja pkg-config git ldc ];
  buildInputs = [  ];
  enableParallelBuilding = true;
  releaseName = name;
  mesonWrapMode = "default";
  
}