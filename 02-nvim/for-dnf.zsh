#!/bin/zsh

# update and upgrade

dnf upgrade -y  # sudo -> cmd

# basic setup vi and vim

dnf install -y vi vim  # sudo -> cmd

source ./02-nvim/_internal/_nvim_setup.zsh
nvim_install_setup
nvim_prepare
vim_prepare