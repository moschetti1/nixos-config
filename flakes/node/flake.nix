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
                    pkgs.nodejs 
                    pkgs.turso-cli 
                    pkgs.sqld
                    pkgs.typescript-language-server
                    pkgs.svelte-language-server
                ];
	    };
        };
}
