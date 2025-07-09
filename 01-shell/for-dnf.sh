#!/bin/sh

# update and upgrade

dnf upgrade -y  # sudo -> cmd
# dnf upgrade -y && dnf install -y curl-minimal wget git nano which zip unzip tar findutils jq && mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/config-starter.git && cd config-starter

# basic setup

dnf install -y curl-minimal wget git nano which zip unzip tar findutils jq openssl lsof procps-n fzf # sudo -> cmd --skip-broken
# nano 01-shell/for-dnf.sh
# ./01-shell/for-dnf.sh

# zsh and omz download
## util-linux-user is for chsh
dnf install -y zsh util-linux-user  # sudo -> cmd

source ./01-shell/_internal/_omz_setup.sh
omz_install_setup