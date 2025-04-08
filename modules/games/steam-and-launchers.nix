{ config, pkgs, ... }:

  # Enable Steam with native runtime and 32-bit support
  
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
}
