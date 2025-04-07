{ config, pkgs, theme, ... }:

# Git Config

{
  programs.git = {
    enable = true;
    userName = "Peachie";
    userEmail = "peachumsgoblin@pm.me";
  };
}
