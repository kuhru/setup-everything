#!/bin/zsh

pnpm_install() {
  # pnpm install
  ## https://pnpm.io/installation

 command -v pnpm &> /dev/null || curl -fsSL https://get.pnpm.io/install.sh | sh -
 source ~/.zshrc
}

pnpm_setup_node_npm() {
  # pnpm env global use for node version passed from main file $1 [like 20.12.0]

  pnpm env use -g $1
}

pnpm_insert_completions_to_zsh() {
  # add pnpm completions to command line
  ## https://pnpm.io/completion
  mkdir -p "$ZSH_CUSTOM/completions"
  pnpm completion zsh > $ZSH_CUSTOM/completions/zsh-completion-pnpm.zsh

  local file="$HOME/.zshrc"
  local start_marker="# pnpm start"
  local end_marker="# pnpm end"
  local add_line='check_and_source "$ZSH_CUSTOM/completions/zsh-completion-pnpm.zsh"'

  if grep -qF "$end_marker" "$file"; then
    # Only insert the line above # pnpm end if it's not already present
    if ! grep -Fq "$add_line" "$file"; then
      sed -i "/$end_marker/i $add_line" "$file"
    fi
  else
    # If the markers are not found, append the full block
    {
      echo ""
      echo "$start_marker"
      echo "$add_line"
      echo "$end_marker"
    } >> "$file"
  fi

  source ~/.zshrc
}