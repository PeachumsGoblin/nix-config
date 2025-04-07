{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    inputs.home-manager.packages.${pkgs.system}.home-manager
  ];
}
