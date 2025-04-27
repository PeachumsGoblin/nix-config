# modules/themes/colors.nix
# Central color palette

{ lib, ... }:

let
  c = {
    # Background & foreground
    bg0    = "#282a3a";
    bg1    = "#3a3d4b"; # main bg
    bg2    = "#535763";
    fg4    = "#696d77";
    fg3    = "#888d94";
    fg2    = "#a0a5ae";
    fg1    = "#eaf2f1"; # text
    fg0    = "#f5f9f8";

    # Core accents
    white  = "#ffffff";
    red    = "#ff657a";
    orange = "#ff9b5e";
    yellow = "#ffd76d";
    green  = "#bad761";
    blue   = "#9cd1bb";
    purple = "#c39ac9";
    pink   = "#ff657a";

    # “Original Monokai” accents (for occasional highlights)
    origRed     = "#f92672";
    origOrange  = "#fd971f";
    origYellow  = "#e6db74";
    origGreen   = "#a6e22e";
    origCyan    = "#a1efe4";
    origBlue    = "#66d9ef";
    origViolet  = "#ae81ff";
    origMagenta = "#fd5ff0";
  };
in
# Simply return the attrset; import gives you `c` directly
c
