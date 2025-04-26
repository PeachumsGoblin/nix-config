# modules/system/nvidia.nix 
# NVIDIA driver & X11 configuration

{ config, pkgs, lib, ... }:

let
  nvidiaPkg = config.boot.kernelPackages.nvidiaPackages.stable;
in {
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;

  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    modesetting.enable = true;
    powerManagement.enable = false;
    open = false;
    nvidiaSettings = true;
  };

  services.xserver.screenSection = ''
    Option "Coolbits" "28"
    Option "TripleBuffer" "true"
    Option "AllowEmptyInitialConfiguration"
  '';
}
