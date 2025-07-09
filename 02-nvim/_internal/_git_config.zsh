#!/bin/zsh

git_prepare() {
  # git config --global user.name "Your Name" // TODO: change this for your user
  # git config --global user.email "your.email@example.com"  // TODO: change this for your user
  git config --global color.ui auto
  git config --global init.defaultBranch main

  if command -v nvim &> /dev/null; then git config --global core.editor "nvim"
  elif command -v vim &> /dev/null; then git config --global core.editor "vim"
  else git config --global core.editor "vi"
  fi

  case "$(uname -s)" in
      Linux*|Darwin*) git config --global core.autocrlf input ;;
      CYGWIN*|MINGW*|MSYS*) git config --global core.autocrlf true ;;
      *) git config --global core.autocrlf input ;;
  esac
}