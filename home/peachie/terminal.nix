{ config, pkgs, theme, ... }:

{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "Monaspace Neon";
      bold_font = "Monaspace Neon Bold";
      italic_font = "Monaspace Xenon Italic";
      bold_italic_font = "Monaspace Xenon Bold Italic";
      font_size = 14.0;

      background = "${theme.base00}";
      foreground = "${theme.base05}";
      selection_background = "${theme.base02}";
      selection_foreground = "${theme.base07}";
      cursor = "${theme.base05}";
      cursor_text_color = "${theme.base00}";

      color0  = "${theme.base00}";
      color1  = "${theme.base08}";
      color2  = "${theme.base0B}";
      color3  = "${theme.base0A}";
      color4  = "${theme.base0D}";
      color5  = "${theme.base0E}";
      color6  = "${theme.base0C}";
      color7  = "${theme.base05}";
      color8  = "${theme.base03}";
      color9  = "${theme.base08}";
      color10 = "${theme.base0B}";
      color11 = "${theme.base0A}";
      color12 = "${theme.base0D}";
      color13 = "${theme.base0E}";
      color14 = "${theme.base0C}";
      color15 = "${theme.base07}";

      enable_audio_bell = false;
      window_padding_width = 8;
      window_margin_width = 0;
      background_opacity = 0.9;
#      hide_window_decorations = "yes";
    };
  };
}
