{ config, pkgs, lib, ... }:

{
  virtualisation.docker = {
    enable = true;
    package        = pkgs.docker_25;
    nvidiaSupport  = true;
    daemonConfig   = {
# This JSON will be merged into /etc/docker/daemon.json
      "default-runtime" = "nvidia";
      "runtimes" = {
        nvidia = {
          path = "${pkgs.nvidia-container-toolkit}/bin/nvidia-container-runtime";
          runtimeArgs = [];
        };
      };
      };

  };

  environment.systemPackages = with pkgs; [
    docker
  ];
}