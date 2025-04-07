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
      # System
      _ = "sudo";
      clr = "clear";
      ll = "ls -la";
      snrs = "sudo nixos-rebuild switch --flake $HOME/nix-config#peach-koopy";
      # Git
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
