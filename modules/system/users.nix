{ config, pkgs, ... }:

{
  users.users.peachie = {
    isNormalUser = true;
    description = "Peachie";
    extraGroups = [ "wheel" "networkmanager" ];
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    kitty
    sublime4
  ];
}
