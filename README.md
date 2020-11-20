# My Dotfiles repository 
In this reposotry I store all my dotfiles. This is the new version wich I started to build from scratch in 2020 after the previous one evolved into a big mess.

# Installation
To install this repository I use [GNU Stow](https://www.gnu.org/software/stow/).

Install neovim init files and modules into $HOME/.config.
```bash
stow -v -R -t ~ nvim
```

# Misc
This section is not closely related to my dotfiles but more or less used in relation. Once I will factor them out to a separete notes page.

## Build neovim from source
Building the release version into my HOME and adding the executable place to PATH.             

sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip


```bash
rm -r build/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim -DCMAKE_BUILD_TYPE=Release"
make install
export PATH="$HOME/neovim/bin:$PATH"
```
