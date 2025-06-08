{
  description = "Flake to use Raylib + GO for game dev.";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }@inputs:

    let
       system = "x86_64-linux";
       pkgs = nixpkgs.legacyPackages.${system};
    in
    {
     devShells.${system}.default = pkgs.mkShell {
      packages = [
        pkgs.go
        pkgs.gopls
        pkgs.golangci-lint-langserver	#compilation
        pkgs.pkgsCross.mingwW64.buildPackages.gcc
        pkgs.pkgsCross.mingwW64.buildPackages.pkg-config
        #web dev stuff
        pkgs.templ
        pkgs.air
        #raylib
        pkgs.libGL
        pkgs.wayland
        pkgs.libxkbcommon
        pkgs.xorg.libXi
        pkgs.xorg.libXrandr
        pkgs.xorg.libXinerama
        pkgs.xorg.libXcursor
        pkgs.alsa-lib 
        pkgs.openal
        pkgs.pulseaudio
        #sdl
        #pkgs.SDL2
        #pkgs.SDL2_image
        #pkgs.SDL2_ttf
        #pkgs.SDL2_mixer
        #pkgs.SDL2_sound
        #pkgs.SDL2_gfx
        pkgs.pkg-config
     ];
LD_LIBRARY_PATH = "lib.makeLibraryPath packages";
     shellHook = ''
         export PATH=$PATH:$(go env GOPATH)/bin
     '';

     };
    };
}
