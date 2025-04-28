

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
            pkgs.nodejs
            pkgs.pkg-config
            pkgs.SDL2
            pkgs.gtk3
            pkgs.webkitgtk_4_0
            pkgs.alsa-lib
        ];

        shellHook = ''
            export PATH=$PATH:$(go env GOPATH)/bin
        '';

     };
    };
}
