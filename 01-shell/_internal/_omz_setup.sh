#!/bin/sh

omz_install_setup() {
  chsh -s $(which zsh) && echo ""
  export SHELL=$(which zsh)

  mkdir -p ~/bin

  # omz setup

  [[ -f "~/.zshrc" ]] && cp "~/.zshrc" "~/.zshrc.pre_omz_setup.bak"
  cp ./01-shell/_zshrc_dump ~/.zshrc
}