# modules/system/users.nix 
# System user definitions & groups

{ config, pkgs, lib, ... }:

{
  users.users.peachie = {
    isNormalUser = true;
    description = "Peachie";
    extraGroups = [ "wheel" "networkmanager" "docker" "video" ];
    shell = pkgs.zsh;
  };
}