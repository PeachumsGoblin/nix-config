{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  environment.systemPackages = with pkgs; [
    docker
    nvidia-docker
  ];

    # Optional: explicitly allow NVIDIA runtime
  virtualisation.docker.extraOptions = ''
    --default-runtime=nvidia
  '';
}
