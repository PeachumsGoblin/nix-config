{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    docker
  ];

  # DO NOT set this unless you're sure the runtime exists
  # Leave this out for now:
  # virtualisation.docker.extraOptions = "--default-runtime=nvidia";
}
