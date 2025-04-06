{ config, pkgs, ... }:

{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    font-awesome
    monaspace
  ];

  fonts.enableDefaultPackages = true;
}