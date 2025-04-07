#!/usr/bin/env bash
set -e

cd "$HOME/nix-config/themes"

current_target=$(readlink current.nix)

if [[ "$current_target" == *"light.nix" ]]; then
  ln -sf dark.nix current.nix
  theme_label="dark 🌙"
else
  ln -sf light.nix current.nix
  theme_label="light ☀️"
fi

notify-send "Theme toggled" "Now using $theme_label\nRun:\nsudo nixos-rebuild switch --flake ~/nix-config#peach-koopy" --icon=preferences-desktop-theme
