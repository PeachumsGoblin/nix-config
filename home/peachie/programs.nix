{ config, pkgs, theme, ... }:

{
  programs.git = {
    enable = true;
    userName = "Peachie";
    userEmail = "peachie@github.com";
  };
}
