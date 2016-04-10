stow --override=git git
stow --override=tmux tmux
stow --override=tmuxinator tmuxinator
stow --override=vim vim
rm ~/.zshrc
stow --override=zsh zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
