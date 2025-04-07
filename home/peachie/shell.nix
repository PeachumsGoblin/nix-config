{ config, pkgs, theme, ... }:

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
    ll = "ls -la";
    _ = "sudo";
    clr = "clear";
    snrs = "sudo nixos-rebuild switch --flake ${config.home.homeDirectory}/nix-config#peach-koopy";
    ga = "git add";
    gaa = "git add all";
    gcam = "git commit --all --message";
    gcl = "git clone";
    gp = "git push";
    gpm = "git push -u origin main";
    gs = "git status";
    # Themes
    toggle-theme = "$HOME/nix-config/scripts/toggle-theme.sh";
    theme = "$HOME/nix-config/scripts/switch-theme.sh";
    dark-theme = "$HOME/nix-config/scripts/set-dark-theme.sh";
    light-theme = "$HOME/nix-config/scripts/set-light-theme.sh";
  };

    initExtra = ''
      export EDITOR=nano
    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$character";
    };
  };
 }
