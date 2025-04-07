{ config, lib, pkgs, ... }:

# Home Manager Core Configuration

{
  imports = [
    ./git.nix
    ./shell.nix
    ./terminal.nix
  ];

  home.username = "peachie";
  home.homeDirectory = "/home/peachie";
  home.stateVersion = "23.11";

  # Make a Games directory
  home.activation.createGamesDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/Games
  '';
}
