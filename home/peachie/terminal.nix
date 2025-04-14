{ config, pkgs, lib, theme, ... }:

# Terminal Emulators

{
  programs.kitty = {
  enable = true;

  settings = {
    font_family = "Monaspace Neon";
    bold_font = "Monaspace Neon Bold";
    italic_font = "Monaspace Neon Italic";
    bold_italic_font = "Monaspace Neon Bold Italic";
    font_size = 12;

    background_opacity = "0.95";
    cursor_shape = "beam";
    enable_audio_bell = false;

    foreground = "#cdd6f4";
    background = "#1e1e2e";
    selection_foreground = "#1e1e2e";
    selection_background = "#cdd6f4";
    url_color = "#89b4fa";
    cursor = "#f5e0dc";

    color0  = "#45475a";
    color1  = "#f38ba8";
    color2  = "#a6e3a1";
    color3  = "#f9e2af";
    color4  = "#89b4fa";
    color5  = "#f5c2e7";
    color6  = "#94e2d5";
    color7  = "#bac2de";
    color8  = "#585b70";
    color9  = "#f38ba8";
    color10 = "#a6e3a1";
    color11 = "#f9e2af";
    color12 = "#89b4fa";
    color13 = "#f5c2e7";
    color14 = "#94e2d5";
    color15 = "#a6adc8";
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
