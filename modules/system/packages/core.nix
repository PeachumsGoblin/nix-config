# modules/system/packages/core.nix 
# For essential system tools & UI components

{ pkgs, ... }:

with pkgs; [
    ## UI Components
    dunst
    hyprpaper
    libnotify
    pavucontrol
    rofi-wayland
    waybar
    wofi

    ## General Utilities
    chatgpt-cli
    curl
    docker
    firefox
    jq
    nnn
    nvidia-container-toolkit
    nvidia-docker
    pulseaudio
    python3Full
    tree
    unzip
    wget

    ## Development Tools / Editors
    git
    kitty
    neovim
    obsidian
    sublime4
    vim
    vscode
  ]


