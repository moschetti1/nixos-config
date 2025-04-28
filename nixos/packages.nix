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
     zed-editor
     libresprite
     #home-manager
     home-manager
     #cli stuff
     zsh
     kitty
     oh-my-posh
     neovim
     yazi
     btop
     git
     tmux
     zellij
     flyctl 
     ffmpeg
     wrangler
          
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
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" "IBMPlexMono" ]; })
 ];


}
