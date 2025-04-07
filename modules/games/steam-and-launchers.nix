{ config, pkgs, ... }:

{
  # Enable Steam with native runtime and 32-bit support
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  # Misc launchers/helpers
  environment.systemPackages = with pkgs; [
    bolt-launcher
    lutris
    heroic
    itch
    gamemode
    mangohud
    steamcmd
    wineWowPackages.stable
    winetricks
  ];
}
