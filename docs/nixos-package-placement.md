# 🧠 NixOS Module & Package Placement Cheat Sheet

---

## 📦 Packages: systemPackages vs home.packages

- Use `services.<name>.enable = true;` for:
	- System daemons (like `cups`, `openssh`, `pipewire`, and `NetworkManager`)
	- Display managers (`lightdm`, `sddm`, etc)
	- Portals, login agents, networking, etc
	- GUI services (`blueman`)

- Use `home.packages` for:
	- User tools (neovim, kitty, wofi, etc)
	- Programs that need per-user control
	- Anything that can be configured with Home Manager modules

- Use `environment.systemPackages` for:
	- CLI/System tools
	- Programs needed early in boot or login (e.g. `htop`, `curl`, `nix`)
	- Apps that don’t benefit from user-specific config

### Special Cases

- Game launchers (Steam, Lutris, Heroic) are often best placed in `/modules/games/`
  so you can configure `hardware.opengl`, 32-bit support, etc., alongside them.

---

## 🧩 Configuration Placement: `/home/peachie/` vs `/modules/`

- Use `/home/peachie` for:
	- Home Manager modules
	- `programs.kitty`, `programs.git`, `home.file`, `home.packages`, etc
	- User dotfiles, terminal setup, WM configs, etc.

- Stylix config lives in `/themes/stylix` and gets plugged back into `home.nix`

- Use `/modules/` for:
	- `services.*` configs
	- `hardware.*` settings (NVIDIA, audio, etc.)
	- Any config that needs to go in `configuration.nix`

---

## 🧼 Best Practices

* Keep all **user configs** in `/home/peachie`
* Keep all **system configs** in `/modules/`
* Only use `systemPackages` for things not configurable

---

_Keep it modular, declarative, and beautiful! 💜_