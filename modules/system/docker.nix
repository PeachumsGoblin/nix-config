{ config, pkgs, ... }:

{
  virtualisation.docker = {
    enable = true;
    extraOptions = "--default-runtime=nvidia";
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

  environment.systemPackages = with pkgs; [
    docker
    nvidia-docker
    nvidia-container-toolkit
  ];
}
