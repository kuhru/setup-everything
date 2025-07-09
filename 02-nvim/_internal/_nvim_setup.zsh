#!/bin/zsh

nvim_install_setup() {
  # nvim install 
  ## -- from https://github.com/neovim/neovim/blob/master/INSTALL.md
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  ./nvim.appimage --appimage-extract
  ./squashfs-root/AppRun --version
  mv squashfs-root /  # sudo -> cmd
  ln -s /squashfs-root/AppRun /usr/bin/nvim  # sudo -> cmd
  rm -rf nvim.appimage
}

nvim_prepare() {
  mkdir -p ~/.config/nvim
  cp -r ./02-nvim/_dump/nvim* ~/.config/nvim
}

vim_prepare() {
  mkdir -p ~/.config
  cp ./02-nvim/_dump/.vimrc ~/.config/.vimrc
}