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

  home.file.".config/starship.toml".text =
    builtins.replaceStrings
      [ "#BASE01" "#BASE08" "#BASE0A" "#BASE0E" "#BASE0D" "#BASE0C" "#BASE0F" ]
      [ theme.base01 theme.base08 theme.base0A theme.base0E theme.base0D theme.base0C theme.base0F ]
      (builtins.readFile ./starship/starship.template.toml);

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };
 }
