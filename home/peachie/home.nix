{ config, pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./programs.nix
    ./dotfiles.nix
    ./shell.nix
  ];

  home.username = "peachie";
  home.homeDirectory = "/home/peachie";
  home.stateVersion = "23.11";
}
