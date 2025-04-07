{ config, pkgs, lib, ... }:

# SSH/Networking config

{
  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  networking.networkmanager.enable = true;
}
