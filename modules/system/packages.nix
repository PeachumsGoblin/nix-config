{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ## UI Components
    dunst
    hyprpaper
    rofi-wayland
    waybar
    wofi

    ## Game Tools
    bolt-launcher
    gamemode
    heroic
    itch
    lutris
    mangohud
    steamcmd
    wineWowPackages.stable
    winetricks

    ## Development Tools / Editors
    git
    kitty
    neovim
    sublime4
    vim

    ## General Utilities
    curl
    firefox
    libnotify
    nnn
    tree
    wget
    xfce.thunar
  ];
}