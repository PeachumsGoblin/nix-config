{ config, pkgs, ... }:

let
  theme = import ../../themes/catppuccin-latte.nix;
in {
  config._module.args.theme = theme;
}
