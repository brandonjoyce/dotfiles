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

# might as well have python
asdf plugin-add python
asdf install python 3.12.1

# might as well have nodejs
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs 20.11.0
asdf global nodejs 20.11.0

# install Erlang
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang 26.2.5.7
asdf set -u erlang 26.2.5.7

# install Elixir
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir 1.17.3-otp-26
asdf set -u elixir 1.17.3-otp-26

stow --override=git git
stow --override=tmux tmux
stow --override=nvim tmux
stow --adopt -t ~/.config nvim

# ZSH
rm ~/.zshrc
stow --override=zsh zsh
