#!/usr/bin/env bash
set -e

FAMILY="$1"
MODE="${2:-light}" # default to light if no mode given

if [ -z "$FAMILY" ]; then
  echo "Usage: $0 <theme-family> [light|dark]"
  exit 1
fi

cd "$HOME/nix-config/themes"

ln -sf "./$FAMILY/light.nix" light.nix
ln -sf "./$FAMILY/dark.nix" dark.nix

if [[ "$MODE" == "dark" ]]; then
  ln -sf dark.nix current.nix
else
  ln -sf light.nix current.nix
fi

notify-send "Theme Set" "Now using $FAMILY – $MODE" --icon=preferences-desktop-theme
