# modules/system/packages/games.nix
# For video games

{ pkgs, ... }:

with pkgs; [
    bolt-launcher
    gamemode
    heroic
    itch
    lutris
    mangohud
    steam-run
    steamcmd
    winetricks
    wineWowPackages.stable
]
