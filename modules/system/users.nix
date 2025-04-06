{ config, pkgs, ... }:

{
  users.users.peachie = {
    isNormalUser = true;
    description = "Peachie";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };

  programs.zsh.enable = true;

  services.openssh.enable = true;
  programs.ssh.startAgent = true;

  networking.networkmanager.enable = true;
}
