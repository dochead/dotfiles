# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Personal macOS dotfiles repo. Contains shell configuration, Homebrew packages, macOS system preferences, and setup scripts for bootstrapping a new Mac.

## Cleanup Status

Much of this repo is obsolete and needs modernization:

- **`bin/bootstrap.sh`** — references `~/.bash_profile` (bash-era). Needs rewrite for zsh.
- **`bin/osx.sh`** — many `defaults write` commands target removed or renamed macOS features (Dashboard, Notification Center launchctl, Spectacle). Needs audit against current macOS.
- **`bin/pydata.sh`** — uses `easy_install`, `mkvirtualenv`, and Python 2 references. Should be replaced with `uv`/`pyenv` workflow.
- **`bin/osxprep.sh`** — still functional but minimal.
- **`zsh/zshrc`** and **`zsh/zshrc.old`** — legacy configs superseded by `zsh/.zshrc`. Can likely be removed.
- **`zsh/zsh_aliases.zsh`** — duplicates aliases already defined in `zsh/.zshrc` (`gpp`, `gcob`, `ytaud`, `ytvid`, `docker`). Also has stale aliases referencing tools replaced in the Brewfile (e.g. `youtube-dl` instead of `yt-dlp`).
- **`config`** — SSH hosts reference old employers/infrastructure that are no longer relevant.
- **`iterm/`** — iTerm2 plist kept but iTerm2 was replaced by Warp/Ghostty in the Brewfile.

When making changes, prefer editing the modern files (`zsh/.zshrc`, `Brewfile`) and flag obsolete code for removal rather than building on top of it.

## Key Files

- **`Brewfile`** — all Homebrew packages (brew, cask, MAS). Install with `brew bundle install`, check with `brew bundle check`, prune with `brew bundle cleanup --force`.
- **`zsh/.zshrc`** — the modern zsh config sourced as `~/.zshrc`. Uses oh-my-zsh with powerlevel10k theme, then sources `zsh/zsh_aliases.zsh` at the end. Manages starship prompt, fzf, zoxide, fnm, and shared history settings.
- **`zsh/zsh_aliases.zsh`** — all custom aliases and git shortcuts. This is the main file for day-to-day alias changes.
- **`zsh/zshrc`** — legacy oh-my-zsh config (predecessor to `.zshrc`). Kept for reference; the active config is `zsh/.zshrc`.
- **`bin/osx.sh`** — macOS `defaults write` preferences (Finder, Dock, Safari, keyboard, etc.). Destructive: kills affected apps at the end.
- **`bin/bootstrap.sh`** — rsync-based installer that copies dotfiles into `$HOME`. Uses `--force` flag to skip confirmation.
- **`bin/osxprep.sh`** — runs macOS software updates and installs Xcode CLI tools.
- **`bin/pydata.sh`** — sets up Python virtualenvs and IPython. Mostly legacy.
- **`config`** — SSH config with host aliases.

## Architecture Notes

The shell setup has two layers that both define some overlapping aliases (notably `gpp`, `gcob`, `ytaud`, `ytvid`, `docker`):
1. `zsh/zshrc` (oh-my-zsh + powerlevel10k + pyenv/nodenv) — the older base
2. `zsh/.zshrc` (starship + modern CLI tools + fnm) — the newer additions, which sources `zsh/zsh_aliases.zsh`

The modern CLI aliases in `.zshrc` replace standard commands: `ls`=eza, `cat`=bat, `grep`=rg, `find`=fd, `du`=dust, `df`=duf. The `docker` alias points to `podman`.

## When Editing

- Alias changes go in `zsh/zsh_aliases.zsh` for legacy aliases or directly in `zsh/.zshrc` for modern tool aliases.
- New Homebrew packages go in the appropriate section of `Brewfile` with a comment explaining what replaced what (see "Removed / Replaced" section at bottom).
- The `config` file contains SSH host definitions with private key paths — do not commit real credentials or key contents.
