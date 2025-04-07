{ config, pkgs, ... }:

let
  theme = import ../../themes/current.nix;
in {
  config._module.args.theme = theme;
}
