# modules/system/packages/packages.nix
# Aggregated systemPackages

{ config, lib, pkgs, ... }:

 let
   core    = pkgs.callPackage ./core.nix    {};
   desktop = pkgs.callPackage ./desktop.nix {};
   games   = pkgs.callPackage ./games.nix   {};
 in {
   environment.systemPackages = lib.concatLists [ core desktop games ];
}