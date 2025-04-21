{ config, pkgs, ... }:

let
  nvidiaPkg = config.boot.kernelPackages.nvidiaPackages.stable;
in {
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia-container-toolkit.enable = true;
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

  environment.systemPackages = with pkgs; [
    nvidiaPkg.settings
  ];
}
