# 🍑 Peachie's NixOS Flake

Welcome to my fully modular, flake-based NixOS configuration!  
This repo powers my desktop `peach-koopy` and user environment `peachie`, built from the ground up with ❤️ and clean theming in mind.

---

## ✨ Features

- 🔧 **Fully declarative NixOS** and Home Manager config
- 🎨 Modular theme system with support for:
  - Catppuccin Latte / Macchiato
  - Rosé Pine Dawn / Moon
  - Day/night switching via systemd timers
- 🖥️ Desktop Environments:
  - KDE Plasma 6
  - Hyprland (Wayland)
- 🐚 Shell:
  - Zsh with Oh My Zsh, autosuggestions, Starship prompt
- 🎮 Gaming ready:
  - Steam, Lutris, Heroic, Wine
- 🔊 PipeWire sound with PulseAudio compatibility
- 🚀 Flake-native system switching:
  - `nixos-rebuild switch --flake .#peach-koopy`

---

## 🧩 Structure

```text
nix-config/
├── flake.nix              # Entry point for system & user config
├── hosts/                 # Per-machine configs (e.g. peach-koopy)
├── home/                  # Home Manager modules for user 'peachie'
├── modules/               # Modular system components (desktop, games, shell, etc)
├── themes/                # Base16 color palettes & current.nix symlink
├── scripts/               # Theme toggle + system helpers
├── systemd/               # systemd user services for theme switching
└── README.md              # 👋 You're here!
