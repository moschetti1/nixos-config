
{
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    };

    outputs = {self, nixpkgs, ...}@inputs:

        let 
            system ="x86_64-linux";
            pkgs = nixpkgs.legacyPackages.${system};
        in
        {
            devShells.${system}.default = pkgs.mkShell { 
                packages = [
                    pkgs.uv
                    pkgs.pyright
                    pkgs.python313Packages.django-stubs
                    pkgs.python313Packages.ruff
                ];

                env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
                  pkgs.stdenv.cc.cc.lib
                  pkgs.libz
                ];
               
	          };
       };
}
