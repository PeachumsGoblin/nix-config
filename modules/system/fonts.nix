# modules/system/fonts.nix 
# Global font packages

{ config, pkgs, lib, ... }:

{
  fonts.packages = with pkgs; [
    font-awesome
    liberation_ttf
    monaspace
    mplus-outline-fonts.githubRelease
    noto-fonts
    noto-fonts-emoji
    proggyfonts
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

  fonts.enableDefaultPackages = true;
}