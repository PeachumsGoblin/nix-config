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
}
