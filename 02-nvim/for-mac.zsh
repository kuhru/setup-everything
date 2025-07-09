#!/bin/zsh

source ./02-nvim/_internal/_git_config.zsh
git_prepare

source ./02-nvim/_internal/_nvim_setup.zsh
nvim_prepare
vim_prepare