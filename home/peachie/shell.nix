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
      gs = "git status";
      toggle-theme = "$HOME/nix-config/scripts/toggle-theme.sh";
      theme = "$HOME/nix-config/scripts/switch-theme.sh";
      dark-theme = "$HOME/nix-config/scripts/set-dark-theme.sh";
      light-theme = "$HOME/nix-config/scripts/set-light-theme.sh";
    };
#    initExtra = ''
#      export EDITOR=nano
#      eval "$(zoxide init zsh)"
#    '';
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$character";
    };
  };
}
