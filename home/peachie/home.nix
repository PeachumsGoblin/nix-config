{ config, lib, pkgs, ... }:

# Home Manager Core Configuration

{
  imports = [
    ./example.nix
    ./example2.nix
    ./example3.nix
  ];

  home.username = "peachie";
  home.homeDirectory = "/home/peachie";
  home.stateVersion = "23.11";

  # Make a Games directory
  home.activation.createGamesDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/Games
  '';
}
