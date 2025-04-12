{ config, lib, pkgs, stylix, ... }:

# Home Manager Core Configuration

{
  imports = [
    ./git.nix
    ./shell.nix
    ./terminal.nix
    ./hyprland.nix
    ../../themes/stylix/stylix-current.nix
  ];

  home.sessionPath = [
  "$HOME/.local/bin"
  ];

  home.username = "peachie";
  home.homeDirectory = lib.mkDefault (builtins.getEnv "HOME");
  home.stateVersion = "23.11";

  home.activation.preCleanup = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    rm -f ~/.gtkrc-2.0
  '';

  home.activation.cleanupGtkrc = lib.hm.dag.entryAfter ["writeBoundary"] ''
    rm -f ~/.gtkrc-2.0
  '';

  # Make a Games directory
  home.activation.createGamesDir = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    mkdir -p ${config.home.homeDirectory}/Games
  '';
}

