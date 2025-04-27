# home/peachie/home.nix 
# Home Manager core imports & global settings

{ config, lib, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./shell.nix
    ./terminal.nix
    ./hyprland.nix
    ./waybar.nix
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

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    font-awesome
    liberation_ttf
    monaspace
    mplus-outline-fonts.githubRelease
    noto-fonts
    noto-fonts-emoji
    proggyfonts
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

}

