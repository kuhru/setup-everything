#!/bin/zsh

source ./03-dev-cli/_internal/_sdkman_setup.zsh
sdkman_setup_zshrc
sdkman_setup_java 21.0.7-amzn
sdk offline disable

source ./03-dev-cli/_internal/_pnpm_setup.zsh
pnpm_install
pnpm_setup_node_npm 24.4.0
pnpm_insert_completions_to_zsh