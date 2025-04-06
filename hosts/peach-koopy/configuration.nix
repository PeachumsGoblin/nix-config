{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/desktop/nvidia.nix
    ../../modules/desktop/hyprland.nix
    ../../modules/desktop/kde.nix
    ../../modules/system/users.nix
    ../../modules/system/fonts.nix
  ];

  networking.hostName = "peach-koopy";
  time.timeZone = "America/Los_Angeles";
  i18n.defaultLocale = "en_US.UTF-8";

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  environment.systemPackages = with pkgs; [
    git curl vim neovim wget firefox
  ];

  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;

  system.stateVersion = "23.11";
}
