#!/usr/bin/env bash

set -e

THEMES_DIR="$HOME/nix-config/themes"
TARGET="$THEMES_DIR/current.nix"
LIGHT="$THEMES_DIR/light.nix"
DARK="$THEMES_DIR/dark.nix"

if [ "$(readlink "$TARGET")" = "light.nix" ]; then
  ln -sf "$DARK" "$TARGET"
  theme_name="Dark"
else
  ln -sf "$LIGHT" "$TARGET"
  theme_name="Light"
fi

nixos-rebuild switch --flake "$HOME/nix-config#peachie"
notify-send "Theme Switched" "Now using $theme_name Theme" --icon=weather-clear-night
