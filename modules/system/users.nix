{ config, pkgs, ... }:

{
  users.users.peachie = {
    isNormalUser = true;
    description = "Peachie";
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    shell = pkgs.zsh;
  };
}