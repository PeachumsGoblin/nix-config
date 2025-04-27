# home/peachie/hyprland.nix 
# Hyprland session settings via Home Manager

{ config, lib, pkgs, ... }:


let
  colors = import ../../modules/themes/colors.nix { inherit lib; };
in {
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {

    # MONITORS

      monitor = [
        "DP-2, 2560x1440@144.00, 0x0, 1, transform, 1"
        "DP-3, 2560x1440@164.96, 1440x1120, 1"
      ];

    # ENVIRONMENT

      env = [
        "LIBVA_DRIVER_NAME,nvidia"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "NVD_BACKEND,direct"
      ];

    # AUTO-START

      exec-once = [
        "hyprpaper"
        "waybar"
      ];

    # INPUT

      input = {
        kb_layout = "us";
        follow_mouse = 1;
        touchpad = {
          natural_scroll = false;
        };
        sensitivity = 0;
      };

    # LOOK AND FEEL

      general = {
        gaps_in = 5;
        gaps_out = 20;
        "col.inactive_border" = "rgb(535763)";
        "col.active_border" = "rgb(c39ac9)";
        border_size = 3;
        resize_on_border = false;
        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        rounding_power = 2;
        blur = {
          enabled = true;
          size = 5;
          passes = 2;
        };
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
        };
      };

      animations = {
        enabled = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
          force_default_wallpaper = 2;
          disable_hyprland_logo = lib.mkForce false;
      };

    # BINDS

      "$mod" = "SUPER";

      bind = [
        "$mod, RETURN, exec, kitty"
        "$mod, Q, killactive"
        "$mod, M, exit"
        "$mod, R, exec, wofi --show drun"
        "$mod, W, exec, firefox"
        "$mod, V, togglefloating"
        "$mod, F, fullscreen"
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

    # WINDOW RULES


    };
  };
}
