#!/usr/bin/env bash

set -e

THEMES="$HOME/nix-config/themes/base16"
CURRENT="$HOME/nix-config/themes/current.yaml"

usage() {
  echo "Usage: $0 [latte|macchiato|dawn|moon]"
  exit 1
}

if [[ $# -ne 1 ]]; then
  usage
fi

THEME="$1"

case "$THEME" in
  dawn|moon)
    ln -sf "rose-pine-$THEME.yaml" "$CURRENT"
    ;;
  *)
    usage
    ;;
esac

sudo nixos-rebuild switch --flake "$HOME/nix-config#peach-koopy"
