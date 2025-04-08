{ config, lib, pkgs, ... }:

# Home Manager Core Configuration

{
  imports = [
    ./git.nix
    ./shell.nix
    ./terminal.nix
  ];

  home.username = "peachie";
  home.homeDirectory = lib.mkDefault (builtins.getEnv "HOME");
  home.stateVersion = "23.11";

  options.home-manager.backupFileExtension = "backup";

  # Make a Games directory
  home.activation.createGamesDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/Games
  '';
}
