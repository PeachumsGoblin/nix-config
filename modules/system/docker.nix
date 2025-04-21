{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;

    daemon.settings = {
    "default-runtime" = "nvidia";
    "runtimes" = {
      "nvidia" = {
        "path" = "/run/current-system/sw/bin/nvidia-container-runtime";
        "runtimeArgs" = [];
      };
    };

  # DO NOT set this unless you're sure the runtime exists
  # Leave this out for now:
  # virtualisation.docker.extraOptions = "--default-runtime=nvidia";
    };
  };

  environment.systemPackages = with pkgs; [
      docker
  ];
}
