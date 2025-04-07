{ config, pkgs, inputs, ... }:

let
  unstable = import inputs.nixpkgs-unstable {
    inherit (pkgs) system;
    config.allowUnfree = true;
  };
in {
  environment.systemPackages = with pkgs; [
    unstable.bolt-launcher
  ];
}
