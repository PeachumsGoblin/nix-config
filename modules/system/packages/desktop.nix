# modules/system/packages/desktop.nix
# For theming, fonts, and icons

{ pkgs, ... }:

with pkgs; [
    gvfs
    nemo-fileroller
    papirus-icon-theme
    rose-pine-cursor
    rose-pine-icon-theme
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-media-tags-plugin
    xfce.thunar-volman
    xfce.tumbler
    xfce.xfce4-session
    xfce.xfce4-settings
    xfce.xfce4-terminal
  ]
