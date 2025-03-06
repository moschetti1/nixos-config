{ config, pkgs, ... }:

{
  imports = [
    ./modules/bundle.nix
  ];

  home.username = "francisco";
  home.homeDirectory = "/home/francisco";

  home.stateVersion = "23.11"; 

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
