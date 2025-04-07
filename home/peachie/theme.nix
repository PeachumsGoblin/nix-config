{ config, pkgs, lib, self, ... }:

let
  theme = import (lib.cleanSource (self + "/themes/current.nix"));
in {
  config._module.args.theme = theme;
}
