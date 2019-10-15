with import <nixpkgs> {}; rec {
  minetestEnv = stdenv.mkDerivation {
    name = "minetest-env";
    buildInputs = [
      stdenv
      gdb
      cmake
      jsoncpp
      curl
      gettext
      openal
      libvorbis
      libGL
      sqlite
      xorg.libX11
      libjpeg
      bzip2
      libpng
      irrlicht
      xorg.libXxf86vm
      luajit
      freetype
      ncurses
      doxygen
    ];
    LD_LIBRARY_PATH="/run/opengl-driver/lib";
  };
}
