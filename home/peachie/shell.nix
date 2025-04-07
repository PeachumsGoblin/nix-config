{ config, pkgs, theme, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "history" ];
      theme = "robbyrussell";
    };
    shellAliases = {
      ll = "ls -la";
      gs = "git status";
      toggle-theme = "~/nix-config/scripts/toggle-theme.sh";
      theme = "~/nix-config/scripts/switch-theme.sh";
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
