{ config, pkgs, ... }:

{
  # Enable Steam with native runtime and 32-bit support
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  hardware.opengl.driSupport32Bit = true;
  hardware.pulseaudio.support32Bit = true;

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
