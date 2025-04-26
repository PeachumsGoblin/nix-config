# modules/system/fonts.nix 
# Global font packages

{ config, pkgs, lib, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    font-awesome
    monaspace
  ];

  fonts.enableDefaultPackages = true;
}