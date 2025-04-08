{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;
    base16Scheme = ./base16/rose-pine-moon.yaml;
    image = ../assets/wallpapers/leafy-moon.png;
    
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

    iconTheme = {
      package = pkgs.rose-pine-icon-theme;
      name = "rose-pine-moon";
    };

    cursor = {
      package = pkgs.rose-pine-cursor;
      name = "BreezeX-RosePine-Linux";
      size = 36;
    };

    sizes = {
      applications = fontSize;
      desktop = fontSize;
      popups = fontSize;
      terminal = fontSize;
    };
  };
}