{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
    autoEnable = true;
    base16Scheme = ./base16/rose-pine-moon.yaml;
    

    fonts.monospace = {
      package = pkgs.monaspace;
      name = "Monaspace Neon";

    };

    opacity = {
      terminal = 0.9;
    };
  };
}
