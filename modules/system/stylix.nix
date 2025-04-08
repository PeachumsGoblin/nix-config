{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
    base16Scheme = ../../themes/current.yaml;
    targets.hyprland.enable = true;
    targets.kitty.enable = true;
    targets.starship.enable = true;
    targets.zsh.enable = true;

    fonts.monospace = {
      package = pkgs.monaspace;
      name = "Monaspace Neon";
    };
    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
  };
}
