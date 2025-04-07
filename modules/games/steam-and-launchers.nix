{ config, pkgs, ... }:

{
  # Enable Steam with native runtime and 32-bit support
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  services.pulseaudio.enable = false;
  services.pulseaudio.support32Bit = true;


  environment.systemPackages = with pkgs; [
    lutris
    heroic
    itch
    gamemode
    mangohud
    wineWowPackages.stable
    winetricks
  ];
}
