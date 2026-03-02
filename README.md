# Arch-.dotfiles

Personal Arch Linux dotfiles for a lightweight X11 + i3 workflow.

This repo is public for transparency and reproducibility. It’s also intentionally opinionated—treat it as a reference implementation rather than a drop-in “install script.”

## What’s in here
- Shell setup: `.zshrc`, `.bash_profile`
- X11: `.xinitrc`, `.Xresources`, `.Xdefaults`
- Window manager: `i3/` (i3 config)

## How to use (safely)
1. **Read before you copy.** Dotfiles can change keybindings, PATH, aliases, and security posture.
2. Start by copying a single file and iterating:
   ```bash
   cp .zshrc ~/.zshrc
   # or
   cp .Xresources ~/.Xresources
   xrdb -merge ~/.Xresources
   ```
3. Prefer symlinks if you want to track changes:
   ```bash
   ln -s "$PWD/.zshrc" ~/.zshrc
   ```

## Assumptions / dependencies
These dotfiles assume an Arch-ish environment and a classic X11 setup (not Wayland-first). If you’re adapting them, you’ll likely want:
- `zsh`
- `xorg-xinit`
- `i3-wm`

## Notes on security
- Review any aliases/functions that wrap `sudo`, networking tools, or package managers.
- Don’t blindly reuse SSH/GPG/credential-related settings from any dotfiles repo.

## License
MIT
