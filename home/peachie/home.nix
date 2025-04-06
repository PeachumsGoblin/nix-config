{ config, pkgs, ... }:

{
  home.username = "peachie";
  home.homeDirectory = "/home/peachie";

  home.packages = with pkgs; [
    neofetch
    starship
    fastfetch
  ];

  programs.starship.enable = true;

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    oh-my-zsh.enable = true;
  };

  home.stateVersion = "23.11";
}