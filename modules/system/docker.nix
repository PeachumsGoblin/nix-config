{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    environment.systemPackages = with pkgs; [
      docker
    ];
    daemon.settings = {
    "default-runtime" = "nvidia";
    "runtimes" = {
      "nvidia" = {
        "path" = "/usr/bin/nvidia-container-runtime";
        "runtimeArgs" = [];
    };
  };

  # DO NOT set this unless you're sure the runtime exists
  # Leave this out for now:
  # virtualisation.docker.extraOptions = "--default-runtime=nvidia";
}
