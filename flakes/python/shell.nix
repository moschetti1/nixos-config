{pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    packages = [
        pkgs.uv
    ];

    env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
        pkgs.stdenv.cc.cc.lib
        pkgs.libz
    ];
}