#!/usr/bin/env bash

set -e

THEMES_DIR="$HOME/nix-config/themes"
FAMILY="$1"  # "catppuccin" or "rose-pine"
MODE="$2"    # "light" or "dark"

if [ -z "$FAMILY" ] || [ -z "$MODE" ]; then
  echo "Usage: $0 <theme-family> <light|dark>"
  exit 1
fi

TARGET="$THEMES_DIR/$FAMILY/$MODE.nix"

if [ ! -f "$TARGET" ]; then
  echo "Theme not found: $TARGET"
  exit 1
fi

ln -sf "$TARGET" "$THEMES_DIR/current.nix"

plasma-apply-colorscheme "$FAMILY $MODE"


sudo nixos-rebuild switch --flake "$HOME/nix-config#peachie"
notify-send "Theme Switched" "$FAMILY $MODE theme applied" --icon=preferences-desktop-theme
