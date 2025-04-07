#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="${SCRIPT_DIR}/../themes"

ln -sf "light.nix" "${THEMES_DIR}/current.nix"

sudo nixos-rebuild switch --flake "${SCRIPT_DIR}/../.#peach-koopy"
notify-send "Theme Changed" "Switched to Light Theme 🌞" --icon=weather-clear
