#!/usr/bin/env bash

set -e

# Assumes this script is located at nix-config/scripts/toggle-theme.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="${SCRIPT_DIR}/../themes"
TARGET="${THEMES_DIR}/current.nix"
LIGHT="${THEMES_DIR}/light.nix"
DARK="${THEMES_DIR}/dark.nix"

# Resolve relative symlink
current_link="$(readlink "$TARGET")"

if [[ "$current_link" == "light.nix" ]]; then
  ln -sf "dark.nix" "$TARGET"
  theme_name="Dark"
else
  ln -sf "light.nix" "$TARGET"
  theme_name="Light"
fi

# Rebuild without absolute paths, using relative flake path
sudo nixos-rebuild switch --flake "${SCRIPT_DIR}/../.#peach-koopy"
notify-send "Theme Switched" "Now using $theme_name Theme" --icon=weather-clear-night
