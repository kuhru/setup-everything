#!/bin/zsh

# update and upgrade

yum upgrade -y

# basic setup vi and vim

yum install -y vi vim

source ./02-nvim/_internal/_nvim_setup.zsh
nvim_install_setup
nvim_prepare
vim_prepare