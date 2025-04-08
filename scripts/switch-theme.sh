#!/usr/bin/env bash

THEMES_DIR="$HOME/nix-config/themes/stylix"
TARGET="$1"

if [[ ! -f "$THEMES_DIR/$TARGET.nix" ]]; then
  echo "Theme not found: $TARGET"
  exit 1
fi

cd "$THEMES_DIR" || exit
ln -sf "./$TARGET.nix" current.nix

echo "Switched Stylix theme to: $TARGET"
