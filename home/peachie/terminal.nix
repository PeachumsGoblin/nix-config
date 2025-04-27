# home/peachie/terminal.nix
# Monokai Pro Octagon Terminal Setup (correct palette)

{ config, lib, pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "Monaspace Neon";
      bold_font = "Monaspace Neon Bold";
      italic_font = "Monaspace Neon Italic";
      bold_italic_font = "Monaspace Neon Bold Italic";
      font_size = 14;
      window_padding_width = 8;

      background_opacity = "0.95";
      cursor_shape = "beam";
      enable_audio_bell = false;

      foreground = "#eaf2f1"; # soft white
      background = "#282a3a"; # deep Octagon background
      selection_foreground = "#282a3a";
      selection_background = "#f5f9f8";
      url_color = "#9cd1bb"; # blue accent
      cursor = "#ff657a"; # pink accent

      color0  = "#282a3a"; # black
      color1  = "#ff657a"; # red
      color2  = "#bad761"; # green
      color3  = "#ffd76d"; # yellow
      color4  = "#9cd1bb"; # blue (misty teal)
      color5  = "#c39ac9"; # purple
      color6  = "#9cd1bb"; # cyan (same as blue)
      color7  = "#f5f9f8"; # white (bright text)

      color8  = "#3a3d4b"; # bright black (bg1)
      color9  = "#ff657a"; # bright red
      color10 = "#bad761"; # bright green
      color11 = "#ffd76d"; # bright yellow
      color12 = "#9cd1bb"; # bright blue
      color13 = "#c39ac9"; # bright magenta
      color14 = "#9cd1bb"; # bright cyan
      color15 = "#eaf2f1"; # bright white (text softer)
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

      set-option -g status-style bg=#282a3a,fg=#f5f9f8
      set-option -g message-style bg=#3a3d4b,fg=#c39ac9
      set-option -g pane-border-style fg=#535763
      set-option -g pane-active-border-style fg=#9cd1bb

      set-option -g status-left-length 40
      set-option -g status-right-length 100

      set -g status-left "🌸 peachie ❘ #S"
      set -g status-right "#W ❘ %Y-%m-%d %H:%M | tail:wagging"

      setw -g window-status-current-style fg=#bad761,bold
      setw -g window-status-style fg=#eaf2f1

      set -g status-interval 30
    '';
  };
}
