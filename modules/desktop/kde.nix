{ config, pkgs, ... }:

{
  services.xserver.desktopManager.plasma6.enable = true;

  environment.systemPackages = with pkgs.kdePackages; [
    konsole
    dolphin
    spectacle
    kate
  ];
}
