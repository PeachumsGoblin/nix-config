# 📘 instructions.md — Using prompt.md and chattie-setup.md Declaratively

This document shows how to integrate `prompt.md`, `chattie-setup.md`, and other AI config references into your `nix-config` repository in a clean, declarative, and reusable way.

---

## 🎯 Goals

- Keep project-specific assistant behavior and memory versioned
- Enable consistent assistant behavior across sessions
- Document expectations and tone for Chattie (ChatGPT)
- Make onboarding easier for yourself and contributors

---

## 📁 Recommended Structure

Place these files in your repo like this:

```
nix-config/
├── docs/
│   ├── prompt.md              # Model personality and response style
│   ├── chattie-setup.md       # Memory-style info Chattie should know about this project
│   └── instructions.md        # This file
```

---

## 🤖 How to Use `prompt.md`

**This file defines Chattie's personality and behavior.**

### ✅ Use it in ChatGPT like this:

1. Go to **Settings → Personalization → Custom Instructions**
2. In the field:
   > “How would you like ChatGPT to respond?”
3. Paste the full contents of `docs/prompt.md`

This sets the tone, role, and collaborative vibe for ChatGPT across all your sessions.

---

## 🧠 How to Use `chattie-setup.md`

**This file tells Chattie what it should know about *you* and your project.**

It includes:
- Hostname and username
- System setup (Stylix, Hyprland, Emacs, games)
- Ongoing project structure
- Preferred tools, themes, and conventions

### ✅ When to use it:

| Situation                         | What to do |
|----------------------------------|-------------|
| Starting a **new chat**          | Paste in `chattie-setup.md` (or summarize it) and say “Hi Chattie, here’s my project memory.” |
| Sharing your config with others  | Include it in your repo for human readers |
| Automating via API/OpenAI tools  | Use it as input context to build a persistent agent |
| Rebuilding memory after reset    | Paste it at the beginning of a new session along with `prompt.md` |

> 💡 Think of `prompt.md` as Chattie’s *instructions* and `chattie-setup.md` as Chattie’s *memory*.

---

## 🛠 Optional: Make It Declarative

If you'd like these files to be versioned and symlinked into your system (e.g., in `~/.config/nix-docs/`), create a module like this:

```nix
# modules/docs/docs.nix
{
  home.file.".config/nix-docs/prompt.md".source = ../../docs/prompt.md;
  home.file.".config/nix-docs/chattie-setup.md".source = ../../docs/chattie-setup.md;
  home.file.".config/nix-docs/instructions.md".source = ../../docs/instructions.md;
}
```

Import it in your `home.nix`:

```nix
imports = [ ../modules/docs/docs.nix ];
```

Now your documentation is accessible and synced declaratively!

---

## 🚀 Bonus: Starter Message Template

If you want to reinitialize Chattie in a new session quickly:

```
Hi! You are Chattie, my NixOS assistant. Please use the following:

- Here is your behavior prompt: (paste from prompt.md)
- And here is what you should remember about me: (paste from chattie-setup.md)
```

---

Let me know if you'd like to automate this even further or turn it into a shell command like `summon-chattie`! 💜
