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
        #raylib
        pkgs.libGL
	      pkgs.wayland
        pkgs.libxkbcommon
        pkgs.xorg.libXi
        pkgs.xorg.libXrandr
        pkgs.xorg.libXinerama
        pkgs.xorg.libXcursor
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
         export PATH=$PATH:$(go env GOPATH)/bin
     '';

     };
    };
}
