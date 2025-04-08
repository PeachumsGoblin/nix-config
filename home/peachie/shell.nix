{ config, pkgs, theme, ... }:

# Shell Config

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "history" ];
      theme = "robbyrussell";
    };

    shellAliases = {

    ## Basics

      ll = "ls -la";
      _ = "sudo";
      clr = "clear";
      sudo-subl = "sudo -E subl";
      cdnc = "cd $HOME/nix-config";
      snrs = "sudo nixos-rebuild switch --flake $HOME/nix-config#peach-koopy";

    ## Git

      ga = "git add";
      gaa = "git add all";
      gcam = "git commit --all --message";
      gcl = "git clone";
      gp = "git push";
      gpm = "git push -u origin main";
      gs = "git status";

    ## Themes
      theme-light = "sudo ln -sf $HOME/nix-config/themes/stylix/stylix-dawn.nix $HOME/nix-config/themes/stylix/stylix-current.nix";
      theme-dark = "sudo ln -sf $HOME/nix-config/themes/stylix/stylix-moon.nix $HOME/nix-config/themes/stylix/stylix-current.nix";
  
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

}
