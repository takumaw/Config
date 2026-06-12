# Config

Personal dotfiles, managed as symlinks into `$HOME`.

## Layout

- `Agents/` — Instructions for AI coding agents
- `Editor/` — Editor and screen config
- `Git/` — Git config and global ignore rules
- `PGP/` — Public keys
- `SSH/` — Placeholder for `~/.ssh`; keys and config are machine-local
- `Shell/` — Shell config

## Install

```sh
git clone https://github.com/takumaw/Config.git ~/Config
cd ~/Config && ./install.sh
```

`install.sh` creates relative symlinks in `$HOME`, replacing existing ones,
so it is safe to re-run after layout changes.
