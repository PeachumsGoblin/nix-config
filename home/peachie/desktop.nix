{ config, pkgs, theme, ... }:


{
home.packages = with pkgs; [
  # GTK Themes
  catppuccin-gtk
  rose-pine-gtk-theme

  # KDE Look and Feel Themes
  catppuccin-kde
  catppuccin-kvantum
  libsForQt5.qtstyleplugin-kvantum

  ];

  # Icon & Cursor Themes
}
