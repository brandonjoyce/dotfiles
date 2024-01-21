stow --override=git git
stow --override=tmux tmux

# Vim classic (I've moved to NeoVim, but this is still here because why not)
stow --override=vim vim

# I was having trouble getting this to work with stow :shrug:
ln -s ~/dotfiles/nvim ~/.config/nvim

# ZSH
rm ~/.zshrc
stow --override=zsh zsh

brew install tmux
brew install tree

# silver searcher
brew install ag

# https://github.com/cormacrelf/dark-notify/
brew install cormacrelf/tap/dark-notify
