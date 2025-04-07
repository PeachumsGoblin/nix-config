#!/usr/bin/env bash
set -e

cd "$HOME/nix-config/themes"
ln -sf light.nix current.nix

notify-send "Theme set to light ☀️" "Now run:\nsudo nixos-rebuild switch --flake ~/nix-config#peach-koopy" --icon=preferences-desktop-theme
