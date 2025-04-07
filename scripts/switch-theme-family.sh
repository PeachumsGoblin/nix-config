#!/usr/bin/env bash
set -e

FAMILY="$1"

if [ -z "$FAMILY" ]; then
  echo "Usage: $0 <theme-family>"
  exit 1
fi

THEMES="$HOME/nix-config/themes"

# Update family-level light/dark links
ln -sf "$THEMES/$FAMILY/light.nix" "$THEMES/light.nix"
ln -sf "$THEMES/$FAMILY/dark.nix" "$THEMES/dark.nix"

# Optional: reset current to light after switching families
ln -sf "$THEMES/light.nix" "$THEMES/current.nix"

notify-send "Switched Theme Family" "Now using $FAMILY"
