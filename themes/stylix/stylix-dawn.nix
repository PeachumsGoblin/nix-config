{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;
    base16Scheme = ../../themes/base16/rose-pine-dawn.yaml;
    image = ../../assets/wallpapers/leafy-dawn.png;
    polarity = "light";
    
    fonts = {
      serif = {
        package = pkgs.monaspace;
        name = "Monaspace Neon";
      };

      sansSerif = {
        package = pkgs.monaspace;
        name = "Monaspace Neon";
      };

      monospace = {
        package = pkgs.monaspace;
        name = "Monaspace Neon";
      };

      emoji = {
        package = pkgs.noto-fonts-color-emoji;
        name = "Noto Color Emoji";
      };
    };

    opacity = {
      terminal = 0.9;
    };

    cursor = {
      package = pkgs.rose-pine-cursor;
      name = "BreezeX-RosePineDawn-Linux";
      size = 36;
    };

    iconTheme = {
      enable = true;
      light = "rose-pine-dawn";
      dark = "rose-pine";
      package = pkgs.papirus-icon-theme;
    };
  };
}