{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  virtualisation.docker.enableNvidia = true;
  environment.systemPackages = with pkgs; [
    docker
    nvidia-docker
    nvidia-docker-toolkit
  ];
}
