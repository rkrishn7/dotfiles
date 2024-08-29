# dotfiles

This repository contains various configuration files that I use across my systems.

## Usage

Configurations are symlinked to the appropriate paths under `HOME` using [GNU stow](https://www.gnu.org/software/stow/).

In order to symlink a specific configuration, run:

```bash
stow alacritty
```

Or, to symlink everything, run:

```bash
stow */ # (ignores README.md)
```
