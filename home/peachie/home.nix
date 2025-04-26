# home/peachie/home.nix 
# Home Manager core imports & global settings

{ config, lib, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./shell.nix
    ./terminal.nix
    ./hyprland.nix
  ];

  home.sessionPath = [
  ".local/bin"
  ];

  home.username = "peachie";
  home.stateVersion = "23.11";

  home.activation.preCleanup = lib.hm.dag.entryBefore ["checkLinkTargets"] ''
    rm -f ~/.gtkrc-2.0
  '';

  home.activation.cleanupGtkrc = lib.hm.dag.entryAfter ["writeBoundary"] ''
    rm -f ~/.gtkrc-2.0
  '';
}

