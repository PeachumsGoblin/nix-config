{ config, pkgs, lib, self, ... }:

let
  theme = import (lib.cleanSource ../../themes/current.nix);
in {
  config._module.args.theme = theme;
}
