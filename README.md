# My Dotfiles repository 
In this reposotry I store all my dotfiles. This is the new version wich I started to build from scratch in 2020 after the previous one evolved into a big mess.

# Installation
To install this repository I use [GNU Stow](https://www.gnu.org/software/stow/).

Install neovim init files and modules into $HOME/.config.
```bash
stow -v -R -t ~ nvim
```
