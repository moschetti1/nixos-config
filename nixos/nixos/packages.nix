{ pkgs, ... }: {

  nixpkgs.config = {
    allowUnfree=true;
  };
  

  environment.systemPackages = with pkgs; [
     #desktop apps
     brave
     bitwarden-desktop
     spotify
     todoist-electron
     vscode
     obs-studio
     vlc

     #home-manager
     home-manager
     #cli stuff
     kitty
     oh-my-posh
     neovim
     yazi
     btop
     git
     tmux
     #hyprland things
     hyprpaper
     hyprcursor
     waybar
     mako
     libnotify
     wofi
     slurp
     swappy
     wl-clipboard
     wlogout
     networkmanagerapplet
     grim
     pipewire
     pulseaudio
     pamixer
     pavucontrol
     playerctl
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    meslo-lg
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];


}
