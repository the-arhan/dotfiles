# the-arhan/dotfiles

A small, modular zsh and Git configuration for GitHub Codespaces and other Unix-like systems.

## Install

GitHub Codespaces recognizes `install.sh` automatically when this repository is selected as your dotfiles repository. To install manually:

```sh
git clone https://github.com/the-arhan/dotfiles.git
cd dotfiles
./install.sh
```

The installer links files into your home directory and backs up conflicts under `~/.dotfiles-backup/`. It is safe to rerun and does not install software.

## Structure

- `.zshrc` loads independent modules in `shell/`.
- `shell/environment.zsh`, `aliases.zsh`, and `functions.zsh` hold shell settings.
- `.gitconfig` provides editor defaults and Git aliases.
- `.config/starship.toml` is used only when Starship is installed; Starship is not required.
- Add optional tool configuration in separate files and source it conditionally from `.zshrc`.

## Enable for every new Codespace

In GitHub, open **Settings → Codespaces → Dotfiles**, enable **Automatically install dotfiles**, and select `the-arhan/dotfiles`. This account-level setting applies to newly created Codespaces; it does not change existing ones.

Codespaces does not use the dotfiles repository to configure VS Code's user-scoped settings. The Arch Codespaces template configures the terminal profile at the repository level.
