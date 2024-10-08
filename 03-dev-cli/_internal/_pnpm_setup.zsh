#!/bin/zsh

pnpm_install_setup_node_npm() {
  # pnpm install
  ## https://pnpm.io/installation

  curl -fsSL https://get.pnpm.io/install.sh | sh -
  source ~/.zshrc

  # pnpm env global use for node version passed from main file $1 [like 20.12.0]

  pnpm env use -g $1

  # add pnpm completions to command line
  ## https://pnpm.io/completion
  pnpm completion zsh > $ZSH_CUSTOM/completions/zsh-completion-pnpm.zsh
  pnpm_insert_completions_to_zsh
  source ~/.zshrc
}

pnpm_insert_completions_to_zsh() {
  local file="$HOME/.zshrc"
  local search_str="# pnpm end"
  local add_str='check_and_source "$ZSH_CUSTOM/completions/zsh-completion-pnpm.zsh"'

  sed -i "/$search_str/i $add_str" "$file"
}