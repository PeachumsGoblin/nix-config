#!/usr/bin/env bash

set -e

THEMES_DIR="$HOME/nix-config/themes"
TARGET="$THEMES_DIR/current.nix"

case "$1" in
  latte|macchiato|dawn|moon)
    THEME_FILE=""
    case "$1" in
      latte) THEME_FILE="catppuccin-latte.nix" ;;
      macchiato) THEME_FILE="catppuccin-macchiato.nix" ;;
      dawn) THEME_FILE="rose-pine-dawn.nix" ;;
      moon) THEME_FILE="rose-pine-moon.nix" ;;
    esac
    echo "Switching to theme: $1"
    ln -sf "$THEMES_DIR/$THEME_FILE" "$TARGET"
    nixos-rebuild switch --flake ~/nix-config#peach-koopy
    notify-send "Theme Changed" "Now using theme: $1" --icon=palette
    ;;
  *)
    echo "Usage: $0 [latte|macchiato|dawn|moon]"
    exit 1
    ;;
esac
