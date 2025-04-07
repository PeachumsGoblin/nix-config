{ config, pkgs, theme, ... }:

{
  config._module.args.theme = theme;
}
