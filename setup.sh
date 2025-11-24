#!/usr/bin/env bash
set -e

brew install asdf
brew install wget
brew install nvim
brew install tmux

# for managing symlinks
brew install stow

# view folder tree
brew install tree

# search tools
brew install ag
brew install ripgrep
brew install fd
brew install fzf

# git helpers
brew install lefthook
brew install lazygit

# ZSH Theme
brew install powerlevel10k

# install postgres tools (psql)
brew install libpq

# AI
brew install --cask claude-code

# might as well have python
asdf plugin add python || true
asdf install python 3.12.1
asdf set -u python 3.12.1

# might as well have nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git || true
asdf install nodejs 20.11.0
asdf set -u nodejs 20.11.0

# install Erlang
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git || true
asdf install erlang 26.2.5.7
asdf set -u erlang 26.2.5.7

# install Elixir
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git || true
asdf install elixir 1.17.3-otp-26
asdf set -u elixir 1.17.3-otp-26

stow --override=tmux tmux
stow --adopt -t ~/.config nvim
stow --adopt -t ~/.config git

# ZSH
rm -f ~/.zshrc
stow --override=zsh zsh
