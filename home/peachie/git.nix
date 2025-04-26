# home/peachie/git.nix 
# Git configuration & aliases

{ config, lib, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Peachie";
    userEmail = "peachumsgoblin@pm.me";
  };
}
