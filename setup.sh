brew install asdf
brew install wget
brew install nvim

# for managing symlinks
brew install stow
brew install tmux

# view folder tree
brew install tree

# silver searcher
brew install ag

# ZSH Theme
brew install powerlevel10k

# might as well have python
asdf plugin-add python
asdf install python 3.12.1

# install Elixir
asdf plugin-add elixir
asdf install elixir 1.15.4-otp-25

stow --override=git git
stow --override=tmux tmux

# Vim classic (I've moved to NeoVim, but this is still here because why not)
stow --override=vim vim

# install astrovim
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim

# link the astrovim custom config
ln -s ~/dotfiles/astrovim_config ~/.config/nvim/lua/user

# ZSH
rm ~/.zshrc
stow --override=zsh zsh

# https://github.com/cormacrelf/dark-notify/
brew install cormacrelf/tap/dark-notify
mkdir -p ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch
cp auto_switch_theme.py ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/

# install nerd fonts
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font

