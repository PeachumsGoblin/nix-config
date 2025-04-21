{ config, pkgs, ... }:

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

  environment.systemPackages = with pkgs; [
    nvidiaPkg.settings
    nvidia-docker
    nvidia-container-toolkit
  ];
  environment.etc."usr/bin/nvidia-ctk".source = "${pkgs.nvidia-container-toolkit}/bin/nvidia-ctk";
}
