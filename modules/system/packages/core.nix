# modules/system/packages/core.nix 
# For essential system tools & UI components

{ pkgs, ... }:

with pkgs; [
    ## UI Components
    dunst
    hyprpaper
    libnotify
    pavucontrol
    wofi

    ## General Utilities
    chatgpt-cli
    curl
    docker
    firefox
    gimp3-with-plugins
    gscreenshot
    imagemagick
    jq
    nnn
    nvidia-container-toolkit
    nvidia-docker
    pulseaudio
    python3Full
    shotman
    slurp
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
    zsh-fast-syntax-highlighting
  ]


