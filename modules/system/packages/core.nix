# core.nix 
# For essential system tools & UI components

{ pkgs, ... }:

with pkgs; [
    ## UI Components
    dunst
    hyprpaper
    rofi-wayland
    waybar
    wofi
    pavucontrol
    libnotify

    ## General Utilities
    curl
    unzip
    tree
    wget
    nnn
    firefox
    python3Full
    jq
    chatgpt-cli

    ## Development Tools / Editors
    git
    kitty
    neovim
    sublime4
    vim
    obsidian
    vscode
  ]