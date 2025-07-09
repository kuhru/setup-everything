#!/bin/zsh

# update and upgrade
## pre-requisite are [zip unzip findutils tar, installed in 01]

dnf upgrade -y  # sudo -> cmd

source ./03-dev-cli/_internal/_sdkman_setup.zsh
sdkman_install
sdkman_setup_java 21.0.7-amzn

source ./03-dev-cli/_internal/_pnpm_setup.zsh
pnpm_install
pnpm_setup_node_npm 24.4.0
pnpm_insert_completions_to_zsh

source ./03-dev-cli/_internal/_bun_setup.zsh
bun_install