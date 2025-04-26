# modules/themes/stylix.nix 
# Stylix color scheme & wallpaper module


{ config, pkgs, lib, stylix, ... }:

{
  # Import your base16 + wallpaper settings
  imports = [ ./stylix-current.nix ];

  # Allow auto-enable if you want Stylix to reapply on each activation
  stylix.autoEnable = true;
}
