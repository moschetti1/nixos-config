{
    wayland.windowManager.hyprland = {
        enable = true;

        settings = {
            monitor = ",preferred,auto,auto";
            "$mainMod" = "SUPER";
            "$terminal" = "kitty";
            "$fileManager" = "dolphin";
            "$menu" = "wofi --show drun";

            exec-once = [
                "$terminal"
                "nm-applet &"
                "waybar & hyprpaper"
            ];

            master = {
                new_status = "master";
            };

            general = {
                gaps_in = 5;
                gaps_out = 20;
                border_size = 2;
                "col.active_border" = "rgba(6b21a8aa) rgba(f97316aa) 15deg";
                "col.inactive_border" = "rgba(595959aa)";
                layout = "dwindle";
                resize_on_border = false;
                allow_tearing = false;
            };

            decoration = {
                rounding = 5;
                active_opacity = 0.9;
                inactive_opacity = 0.8;

                blur = {
                    enabled = true;
                    size = 3;
                    passes = 1;
                    vibrancy = 0.16966;
                };

                shadow = {
                    enabled = true;
                    range = 4;
                    render_power = 3;
                    color = "rgba(1a1a1aee)";
                };
            };

            animations = {
                enabled = true;
                bezier = "myBezier, 0.05, 0.9, 0.1, 1.05";
                animation = [
                    "windows, 1, 7, myBezier"
                    "windowsOut, 1, 7, default, popin 80%"
                    "border,      1, 10, default"
                    "borderangle, 1, 8,  default"
                    "fade,        1, 7,  default"
                    "workspaces,  1, 6,  default"
                ];
            };

            dwindle = {
                pseudotile = true;
                preserve_split = true;
            };


            misc = {
                force_default_wallpaper = 0;
                disable_hyprland_logo = true;
            };

            input = {
                kb_layout = "us";
                follow_mouse = 1;
                sensitivity = 0;
                touchpad = {
                    natural_scroll = false;
                };
            };

            gestures = {
                workspace_swipe = false;
            };

            device = {
                name = "epic-mouse-v1";
                sensitivity = "-0.5";
            };


            bind = [
                "$mainMod, Q, exec, $terminal"
                "$mainMod, C, killactive"
                "$mainMod, M, exit"
                "$mainMod, E, exec, $fileManager"
                "$mainMod, V, toggleFloating"
                "$mainMod, R, exec, $menu"
                "$mainMod, P, pseudo"
                "$mainMod, J, togglesplit"

                "$mainMod, left, movefocus, l"
                "$mainMod, right, movefocus, r"
                "$mainMod, up, movefocus, u"
                "$mainMod, down, movefocus, d"

                "$mainMod, 1, workspace, 1"
                "$mainMod, 2, workspace, 2"
                "$mainMod, 3, workspace, 3"
                "$mainMod, 4, workspace, 4"
                "$mainMod, 5, workspace, 5"
                "$mainMod, 6, workspace, 6"
                "$mainMod, 7, workspace, 7"
                "$mainMod, 8, workspace, 8"
                "$mainMod, 9, workspace, 9"
                "$mainMod, 0, workspace, 10"

                "$mainMod SHIFT, 1, movetoworkspace, 1"
                "$mainMod SHIFT, 2, movetoworkspace, 2"
                "$mainMod SHIFT, 3, movetoworkspace, 3"
                "$mainMod SHIFT, 4, movetoworkspace, 4"
                "$mainMod SHIFT, 5, movetoworkspace, 5"
                "$mainMod SHIFT, 6, movetoworkspace, 6"
                "$mainMod SHIFT, 7, movetoworkspace, 7"
                "$mainMod SHIFT, 8, movetoworkspace, 8"
                "$mainMod SHIFT, 9, movetoworkspace, 9"
                "$mainMod SHIFT, 0, movetoworkspace, 10"
            
                "$mainMod, S, togglespecialworkspace, magic,"
                "$mainMod SHIFT, S, movetoworkspace, sepcial:magic"

                "$mainMod, mouse_down, workspace, e+1"
                "$mainMod, mouse_up, workspace, e-1"

                "$mainMod, mouse:272, movewindow"
            ];

            bindm = [
                "$mainMod, mouse:272, movewindow"
                "$mainMod, mouse:273, resizewindow"
            ];

            bindel = [
                ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
                ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
                ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
                ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
                ",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
                ",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
            ];

            bindl = [
                ", XF86AudioNext, exec, playerctl next"
                ", XF86AudioPause, exec, playerctl play-pause"
                ", XF86AudioPlay, exec, playerctl play-pause"
                ", XF86AudioPrev, exec, playerctl previous"
            ];

            

            # Ignore maximize requests from apps.
            windowrulev2 =[
                "suppressevent maximize, class:.*"
                "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
            ];

        };
    };
}
