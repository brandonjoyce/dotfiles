stow --override=git git
stow --override=tmux tmux
stow --override=vim vim
ln -s ~/dotfiles/nvim ~/.config/nvim
rm ~/.zshrc
stow --override=zsh zsh
brew install tmux
brew install tree
brew install ag
