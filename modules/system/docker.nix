{ config, pkgs, lib, ... }:

{
  virtualisation.docker = {
    enable = true;
    nvidiaSupport = true;  # optional but harmless
    extraConfig = lib.mkForce ''
      {
        "default-runtime": "nvidia",
        "runtimes": {
          "nvidia": {
            "path": "${pkgs.nvidia-container-runtime}/bin/nvidia-container-runtime",
            "runtimeArgs": []
          }
        }
      }
    '';
  };

  environment.systemPackages = with pkgs; [
    docker
  ];
}