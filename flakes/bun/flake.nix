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
                    pkgs.bun
                    pkgs.sqld
                    pkgs.postgresql_15
                    pkgs.typescript-language-server
                ];

                shellHook = ''
                    export PGDATA=$PWD/.pgdata
                    export SOCKET_DIR="$PGDATA/socket"

                    mkdir -p "$SOCKET_DIR"
                    if [ ! -d "$PGDATA" ]; then
                        echo "[flake] Initializing new PG data dir."
                        initdb -D "$PGDATA"
                    fi

                    # Start PostgreSQL
                    echo "[flake] Starting postgres..."
                    pg_ctl -D "$PGDATA" -l "$PGDATA/logfile" -o "-c unix_socket_directories='$SOCKET_DIR'" start
 
                    # Wait a bit for PG to be ready
                    sleep 2
                '';
	    };
        };
}
