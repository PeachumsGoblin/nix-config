{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop/hyprland.nix
    ../../modules/games/steam-and-launchers.nix
    ../../modules/system/audio.nix
    ../../modules/system/fonts.nix
    ../../modules/system/networking.nix
    ../../modules/system/nvidia.nix
    ../../modules/system/users.nix
    ../../modules/system/packages.nix
  ];

  networking.hostName = "peach-koopy";
  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  programs.zsh.enable = true;

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;

  system.stateVersion = "23.11";
}
