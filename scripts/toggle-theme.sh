#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR/../themes"

current_link="$(readlink current.nix)"

if [[ "$current_link" == *"light.nix" ]]; then
  ln -sf dark.nix current.nix
  theme_name="Dark"
else
  ln -sf light.nix current.nix
  theme_name="Light"
fi

sudo nixos-rebuild switch --flake "$HOME/nix-config#peachie"
notify-send "Theme Switched" "Now using $theme_name Theme" --icon=preferences-desktop-theme
