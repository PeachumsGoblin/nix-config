# home/peachie/shell.nix 
# Shell (zsh) settings & prompt theming

{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    enableCompletion = true;
    initContent = ''
      source ${pkgs.zsh-fast-syntax-highlighting}/share/zsh/site-functions/fast-syntax-highlighting.plugin.zsh
      
      FAST_HIGHLIGHT_STYLES[default]='none'
      FAST_HIGHLIGHT_STYLES[alias]='fg=#9cd1bb'            
      FAST_HIGHLIGHT_STYLES[builtin]='fg=#9cd1bb'          
      FAST_HIGHLIGHT_STYLES[function]='fg=#9cd1bb'          
      FAST_HIGHLIGHT_STYLES[command]='fg=#9cd1bb'          
      FAST_HIGHLIGHT_STYLES[precommand]='fg=#c39ac9'        
      FAST_HIGHLIGHT_STYLES[option]='fg=#c39ac9'            
      FAST_HIGHLIGHT_STYLES[parameter]='fg=#9cd1bb'         
      FAST_HIGHLIGHT_STYLES[arg0]='fg=#ff657a'             
      FAST_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#c39ac9'
      FAST_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#c39ac9'
      FAST_HIGHLIGHT_STYLES[commandseparator]='fg=#c39ac9'
      FAST_HIGHLIGHT_STYLES[command-substitution]='fg=#9cd1bb'
      FAST_HIGHLIGHT_STYLES[redirection]='fg=#ff657a'
      FAST_HIGHLIGHT_STYLES[variable]='fg=#9cd1bb'
      FAST_HIGHLIGHT_STYLES[comment]='fg=#535763'
      FAST_HIGHLIGHT_STYLES[quoted-argument]='fg=#ffd76d'   
      FAST_HIGHLIGHT_STYLES[globbing]='fg=#c39ac9'
      FAST_HIGHLIGHT_STYLES[history-expansion]='fg=#ff657a'
      FAST_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#ffd76d'
      FAST_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#ffd76d'
      FAST_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#9cd1bb'
      FAST_HIGHLIGHT_STYLES[path]='fg=#ff657a'
      FAST_HIGHLIGHT_STYLES[path_prefix]='fg=#ff657a'

      autoload -Uz compinit
      compinit
    '';
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "z" "history"];
      theme = "robbyrussell";
    };

    shellAliases = {

    ## Basics

      ll = "ls -la";
      _ = "sudo";
      clr = "clear";
      sudo-subl = "sudo -E subl";
      cdnc = "cd $HOME/nix-config";
      snrs = "sudo nixos-rebuild switch --flake $HOME/nix-config#koopy-pc";

    ## Git

      ga = "git add";
      gaa = "git add all";
      gcam = "git commit --all --message";
      gcl = "git clone";
      gp = "git push";
      gpm = "git push -u origin main";
      gs = "git status";

    ## Themes
  
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      format = ''
        $username$hostname$directory$git_branch$git_state$git_status$git_metrics$fill$nodejs$cmd_duration $jobs $time$line_break$character
      '';

      palette = "monokai-pro-octagon";

      palettes.monokai-pro-octagon = {
        bg0    = "#282a3a";
        bg1    = "#3a3d4b"; # main bg
        bg2    = "#535763";
        fg4    = "#696d77";
        fg3    = "#888d94";
        fg2    = "#a0a5ae";
        fg1    = "#eaf2f1"; # text
        fg0    = "#f5f9f8";

        # Core accents
        white  = "#ffffff";
        red    = "#ff657a";
        orange = "#ff9b5e";
        yellow = "#ffd76d";
        green  = "#bad761";
        blue   = "#9cd1bb";
        purple = "#c39ac9";
        pink   = "#ff657a";
      };

      add_newline = true;

      username = {
        show_always = true;
        style_user = "bold pink";
        style_root = "bold orange";
        format = "[$user]($style) ";
      };

      character = {
        success_symbol = "[[  ](pink) ♥ 󱞪](green) ";
        error_symbol = "[[  ](pink) ♥ ✘](bold red) ";
        vimcmd_symbol = "[  ❮](purple) ";
      };

      directory = {
        truncation_length = 4;
        style = "bold blue";
        read_only_style = "red";
        truncation_symbol = "../";
        format = "in [$path]($style)[$read_only]($read_only_style) ";
      };

      directory.substitutions = {
        Documents = "󰈙";
        Downloads = " ";
        Music = " ";
        Pictures = " ";
      };
      
      git_branch = {
        symbol = " ";
        style = "bold purple"; # pastel purple
        format = "on [$symbol$branch]($style) ";
      };

      git_status = {
        style = "bold orange"; # pastel orange
        format = "[$all_status$ahead_behind]($style) ";
      };

      cmd_duration = {
        min_time = 2000;
        format = "took [$duration](yellow) "; # pastel yellow
      };
    };
  };


}
