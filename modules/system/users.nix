{ config, pkgs, ... }:

{
  users.users.peachie = {
    isNormalUser = true;
    description = "Peachie";
    extraGroups = [ "wheel" "networkmanager" "docker" "video" ];
    shell = pkgs.zsh;
  };
}