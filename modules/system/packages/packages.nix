{ config, lib, pkgs, ... }:

 let
   core    = import ./core.nix    { inherit pkgs; };
   desktop = import ./desktop.nix { inherit pkgs; };
   games   = import ./games.nix   { inherit pkgs; };
 in {
   environment.systemPackages = lib.concatLists [ core desktop games ];
}
