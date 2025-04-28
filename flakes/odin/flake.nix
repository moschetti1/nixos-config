{
  description = "A very basic odin flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:

  let
     system = "x86_64-linux";
     pkgs = nixpkgs.legacyPackages.${system};
  in
  {
     devShells.${system}.default = pkgs.mkShell {
        packages = [
         pkgs.odin
         pkgs.gcc
         pkgs.libGL
         pkgs.libxkbcommon
         pkgs.glfw
         pkgs.xorg.libXi
         pkgs.xorg.libXrandr
         pkgs.xorg.libXinerama
         pkgs.xorg.libXcursor
         pkgs.wayland
         #sdl
         #pkgs.SDL2
         #pkgs.SDL2_image
         #pkgs.SDL2_ttf
         #pkgs.SDL2_mixer
         #pkgs.SDL2_sound
         #pkgs.SDL2_gfx
         pkgs.pkg-config
      ];
      shellHook = ''
                  export LD_LIBRARY_PATH=${pkgs.xorg.libX11}/lib:${pkgs.xorg.libXrandr}/lib:${pkgs.xorg.libXinerama}/lib:${pkgs.xorg.libXcursor}/lib:${pkgs.xorg.libXi}/lib:${pkgs.raylib}/lib:${pkgs.mesa}/lib:${pkgs.libglvnd}/lib:$LD_LIBRARY_PATH
                  export LIBGL_ALWAYS_SOFTWARE=1
                  export DISPLAY=:0
                  export XDG_SESSION_TYPE=x11
                  export GDK_BACKEND=wayland
                  export SDL_VIDEODRIVER=wayland
                  echo "Odin environment running"
                '';
     };
  };
}
