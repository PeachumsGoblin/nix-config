# modules/system/docker.nix 
# Docker & NVIDIA container runtime

{ config, pkgs, lib, ... }:

{
  virtualisation.docker = {
    enable = true;
    daemon.settings = {
      "default-runtime" = "nvidia";
      "features" = {
        "cdi" = true;
      };
      "runtimes" = {
        "nvidia" = {
          "path" = "${pkgs.nvidia-container-toolkit}/bin/nvidia-container-runtime";
          "runtimeArgs" = [];
        };
      };
    };
  };
}
