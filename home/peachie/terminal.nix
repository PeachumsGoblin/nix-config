{ config, pkgs, lib, theme, ... }:

# Terminal Emulators

{
  programs.kitty = {
    enable = true;

    settings = {
      font_size = 14.0;
      window_padding_width = 8;
    };
  };

  programs.tmux = {
    enable = true;

    terminal = "screen-256color";
    mouse = true;
    historyLimit = 10000;

    extraConfig = ''
      setw -g mode-keys vi
      set -as terminal-overrides ",xterm-256color:Tc"

      set-option -g status-style bg=#1e1e2e,fg=#cdd6f4
      set-option -g message-style bg=#1e1e2e,fg=#cba6f7
      set-option -g pane-border-style fg=#585b70
      set-option -g pane-active-border-style fg=#89dceb
      set-option -g status-left-length 40
      set-option -g status-right-length 100

      set -g status-left "☕ peachie ❘ #S"
      set -g status-right "#W ❘ %H:%M | tail: swish"

      setw -g window-status-current-style fg=#a6e3a1,bold
      setw -g window-status-style fg=#cdd6f4

      set -g status-interval 60
    '';
  };
}
