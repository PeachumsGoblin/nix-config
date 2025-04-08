#!/usr/bin/env bash

set -e

THEMES="$HOME/nix-config/themes"
CURRENT="$THEMES/current.yaml"

usage() {
  echo "Usage: $0 [latte|macchiato|dawn|moon]"
  exit 1
}

if [[ $# -ne 1 ]]; then
  usage
fi

THEME="$1"

case "$THEME" in
  latte|macchiato)
    ln -sf "catppuccin-$THEME.yaml" "$CURRENT"
    ;;
  dawn|moon)
    ln -sf "rose-pine-$THEME.yaml" "$CURRENT"
    ;;
  *)
    usage
    ;;
esac

notify-send "Stylix" "Switched theme to: $THEME"
sudo nixos-rebuild switch --flake "$HOME/nix-config#peach-koopy"
