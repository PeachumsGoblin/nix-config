{ config, pkgs, lib, ... }:

# SSH/Networking config

{
  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  networking.networkmanager.enable = true;

  nixpkgs.config.permittedInsecurePackages = [
    "openssl-1.1.1w"
  ];
}

