{
  programs.waybar = {
    enable = true;
    style = ./waybarstyles.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        margin = "0 10 0 10";
        modules-left = ["hyprland/workspaces"];
        modules-center = ["custom/weather" "clock"];
        modules-right = [ "pulseaudio" "custom/power" "tray"];

        "custom/power" = {
          format = "";
          tooltip = false;
          on-click = "wlogout";
        };

        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = false;
          format = "{icon}";
          format-icons = {
            "1" = "";
            "2" = "";
            "3" = "";
            "4" = "";
            "5" = "";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "magic" = "";
          };

          persistent-workspaces = {
            "*" = 9;
          };
        };

        "custom/weather" = {
          format = " {} ";
          exec = "curl -s 'wttr.in/canelones?format=%c%t'";
          interval = 300;
          class = "weather";
        };

        "pulseaudio" = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}% ";
          format-muted = "";
          format-icons = {
            "headphones" = "";
            "handsfree" = "";
            "headset" = "";
            "phone" = "";
            "portable" = "";
            "car" = "";
            "default" = ["" ""];
          };
          on-click = "pavucontrol";
        };


        "clock" = {
          format = "{:%d.%m.%Y - %H:%M}";
          format-alt = "{:%A, %B %d at %R}";
        };

        "tray" = {
          icon-size = 14;
          spacing = 1;
        };
      };
    };
  };
}