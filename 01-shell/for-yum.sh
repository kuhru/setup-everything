#!/bin/sh

# update and upgrade

yum upgrade -y
# yum upgrade -y && yum install -y curl-minimal wget git nano which zip unzip tar findutils jq && mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/config-starter.git && cd config-starter

# basic setup

yum install -y curl-minimal wget git nano which zip unzip tar findutils jq openssl lsof procps-n fzf
# mkdir ~/Documents && cd ~/Documents && git clone https://github.com/kuhru/config-starter.git && cd config-starter
# nano 01-shell/for-yum.sh
# ./01-shell/for-yum.sh

# zsh and omz download
## util-linux-user is for chsh
yum install -y zsh util-linux-user

source ./01-shell/_internal/_omz_setup.sh
omz_install_setup