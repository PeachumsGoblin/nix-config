{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ## UI Components
    dunst
    hyprpaper
    rofi-wayland
    waybar
    wofi
    pavucontrol

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
    unzip
    steam-run
    firefox
    libnotify
    nnn
    nwg-look
    tree
    wget
    xfce.thunar
    xfce.thunar-volman
    gvfs
    xfce.thunar-archive-plugin
    xfce.tumbler
    xfce.xfce4-terminal
    xfce.thunar-media-tags-plugin
    nemo-fileroller
    xfce.xfce4-settings
    xfce.xfce4-session


    ## Theming
    papirus-icon-theme
    rose-pine-cursor
    rose-pine-icon-theme

    python311
    python311Packages.virtualenv
    python311Packages.tkinter
  ];
}