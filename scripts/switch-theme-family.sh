#!/usr/bin/env bash
set -e

FAMILY="$1"

if [ -z "$FAMILY" ]; then
  echo "Usage: $0 <theme-family>"
  exit 1
fi

cd "$HOME/nix-config/themes"

ln -sf "./$FAMILY/light.nix" light.nix
ln -sf "./$FAMILY/dark.nix" dark.nix
ln -sf light.nix current.nix

notify-send "Switched Theme Family" "Now using $FAMILY" --icon=preferences-desktop-theme
