# home/peachie/hyprland.nix 
# Hyprland session settings via Home Manager

{ config, lib, pkgs, ... }:

{
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nix-config/assets/wallpapers/leafy-moon.png
    preload = ~/nix-config/assets/wallpapers/vertical-nixos-clean.png

    wallpaper = DP-3,~/nix-config/assets/wallpapers/leafy-moon.png
    wallpaper = DP-2,~/nix-config/assets/wallpapers/vertical-nixos-clean.png

    ipc = off
  '';

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
        "dunst"
        "waybar"
        "hyprpaper"
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
        gaps_out = 10;
        "col.active_border" = "rgb(c39ac9)";
        "col.inactive_border" = "rgb(535763)";
        border_size = 4;
        resize_on_border = false;
        no_border_on_floating = false;
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

        bezier = [
          # Smooth easing for window borders
          "borderfade, 0.42, 0.0, 0.33, 1.0"   # ease-in-out curve
          "fadein, 0.36, 0.0, 0.33, 1.0"       # for pop-in effects
          "fadeout, 0.34, 0.0, 0.33, 1.0"      # for pop-out effects
        ];

        animation = [
          # Border glow when window gains focus
          "border, 1, 4, borderfade"

          # Smooth fade in when spawning windows
          "windows, 1, 4, fadein"

          # Smooth fade out when closing windows
          "windowsOut, 1, 4, fadeout"

          # Light pop-in for workspace changes
          "workspaces, 1, 3, borderfade"
        ];
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
          force_default_wallpaper = 0;
          disable_hyprland_logo = lib.mkForce true;
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
