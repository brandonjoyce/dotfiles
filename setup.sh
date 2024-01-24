brew install asdf
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

# I was having trouble getting this to work with stow :shrug:
ln -s ~/dotfiles/nvim ~/.config/nvim

# ZSH
rm ~/.zshrc
stow --override=zsh zsh

# https://github.com/cormacrelf/dark-notify/
brew install cormacrelf/tap/dark-notify
mkdir -p ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch
cp auto_switch_theme.py ~/Library/Application\ Support/iTerm2/Scripts/AutoLaunch/

# Packer (Neovim package manager)
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "make sure to enable the iTerm Python API"
echo "make sure to import the papercolor theme into iterm"

