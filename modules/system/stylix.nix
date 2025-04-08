{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
    base16Scheme = ../../themes/current.yaml;
    targets.hyprland.enable = true;

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
