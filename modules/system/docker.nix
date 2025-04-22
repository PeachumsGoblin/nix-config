{ config, pkgs, ... }:

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

  # DO NOT set this unless you're sure the runtime exists
  # Leave this out for now:
  virtualisation.docker.extraOptions = "--default-runtime=nvidia";
    };
  };

  environment.systemPackages = with pkgs; [
    docker
    nvidia-docker
    nvidia-container-toolkit
  ];
}
