{ config, lib, pkgs, ... }:

{
  imports = [
    ./theme.nix
    ./programs.nix
    ./dotfiles.nix
    ./shell.nix
    ./services.nix
    ./terminal.nix
  ];

  home.username = "peachie";
  home.homeDirectory = "/home/peachie";
  home.stateVersion = "23.11";
  home.activation.createGamesDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/Games
  '';
}
