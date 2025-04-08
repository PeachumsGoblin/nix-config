{ config, pkgs, lib, ... }:

{
  stylix = {
    enable = true;
#    autoEnable = true;
    base16Scheme = ../../themes/current.yaml;

    fonts.monospace = {
      package = pkgs.monaspace;
      name = "Monaspace Neon";
    };
    };
  }
