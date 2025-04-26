# modules/themes/stylix.nix 
# Stylix color scheme & wallpaper module


{ config, pkgs, lib, ... }:

{
  # Import your base16 + wallpaper settings
  imports = [ ./stylix/stylix-current.nix ];

  # Allow auto-enable if you want Stylix to reapply on each activation
  stylix.autoEnable = true;
}
