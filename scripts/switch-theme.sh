#!/usr/bin/env bash

THEMES_DIR="$HOME/nix-config/themes/stylix"
TARGET="$1"

if [ -e "$THEMES_DIR/$TARGET.nix" ]; then
  echo "Theme not found: $TARGET"
  exit 1
fi

cd "$THEMES_DIR" || exit
sudo ln -sf "./$TARGET.nix" stylix-current.nix

echo "Switched Stylix theme to: $TARGET"
