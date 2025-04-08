{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;

    # Use a symlink for dynamic switching — points to one of your theme YAML files
    base16Scheme = ../../themes/current.yaml;

    # Fonts
    fonts = {
      monospace = {
        package = pkgs.monaspace;
        name = "Monaspace Neon";
      };
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };
      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };
      emoji = {
        package = pkgs.noto-fonts-emoji;
        name = "Noto Color Emoji";
      };
    };

    # Cursor theme
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
      size = 24;
    };

    # Target applications/desktops to apply theme to
    targets = {
      gtk.enable = true;
      kde.enable = true;
      kitty.enable = true;
      starship.enable = true;
      fish.enable = false;
      zsh.enable = true;
      gnome.enable = false;
    };

    options.stylix.targets.hyprland = {
      enable = config.lib.stylix.mkEnableTarget "Hyprland" true;
      hyprpaper.enable = config.lib.stylix.mkEnableTarget "Hyprpaper" (
        config.stylix.image != null
      );
    };

    config =
      let
        cfg = config.stylix.targets.hyprland;
      in
      lib.mkIf
        (
          config.stylix.enable
          && cfg.enable
          && config.wayland.windowManager.hyprland.enable
        )
        (
          lib.mkMerge [
            {
              wayland.windowManager.hyprland.settings =
                let
                  inherit (config.lib.stylix) colors;

                  rgb = color: "rgb(${color})";
                  rgba = color: alpha: "rgba(${color}${alpha})";
                in
                {
                  decoration.shadow.color = rgba colors.base00 "99";
                  general = {
                    "col.active_border" = rgb colors.base0D;
                    "col.inactive_border" = rgb colors.base03;
                  };
                  group = {
                    "col.border_inactive" = rgb colors.base03;
                    "col.border_active" = rgb colors.base0D;
                    "col.border_locked_active" = rgb colors.base0C;

                    groupbar = {
                      text_color = rgb colors.base05;
                      "col.active" = rgb colors.base0D;
                      "col.inactive" = rgb colors.base03;
                    };
                  };
                  misc.background_color = rgb colors.base00;
                };
            }

            (lib.mkIf cfg.hyprpaper.enable {
              services.hyprpaper.enable = true;
              stylix.targets.hyprpaper.enable = true;
            })
          ]
        );

    opacity = {
      terminal = 0.90;
    };
  };
}
