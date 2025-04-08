{ config, pkgs, theme, ... }:

# Terminal Emulators

{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "Monaspace Neon";
      bold_font = "Monaspace Neon Bold";
      italic_font = "Monaspace Xenon Italic";
      bold_italic_font = "Monaspace Xenon Bold Italic";
      font_size = 14.0;

      enable_audio_bell = false;
      window_padding_width = 8;
      window_margin_width = 0;
      background_opacity = 0.95;
    };
  };
}
