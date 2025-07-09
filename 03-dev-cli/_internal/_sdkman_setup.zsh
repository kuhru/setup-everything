#!/bin/zsh

sdkman_install() {
  # sdkman install
  ## https://sdkman.io/

  curl -s "https://get.sdkman.io" | bash
  source ~/.sdkman/bin/sdkman-init.sh
}

sdkman_setup_java() {
  # sdkman config

  mkdir -p ~/.sdkman/etc
  cp ./03-dev-cli/_dump/sdkman_config ~/.sdkman/etc/config

  # java install for version passed from main file $1 [like 21.0.2-amzn]

  sdk install java $1

  # sdkman offline to not phone home

  sdk offline enable
}

sdkman_setup_zshrc() {
  local file="$HOME/.zshrc"
  local start_marker="# sdkman start"
  local end_marker="# sdkman end"
  local add_line_1='export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec'
  local add_line_2='check_and_source "${SDKMAN_DIR}/bin/sdkman-init.sh"'

  if ! grep -Fq "$add_line_2" "$file"; then
    {
      echo ""
      echo "$start_marker"
      echo "$add_line_1"
      echo "$add_line_2"
      echo "$end_marker"
    } >> "$file"
  fi

  source ~/.zshrc
}