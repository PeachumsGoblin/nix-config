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
 #    kde.enable = true;
      hyprland.enable = true;
      kitty.enable = true;
      starship.enable = true;
      fish.enable = false;
      zsh.enable = true;
      gnome.enable = false;
    };

    opacity = {
      terminal = 0.90;
    };
  };
}
