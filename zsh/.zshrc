ssh-add -L &> /dev/null
if [ $? -eq 1 ]; then
  ssh-add
fi

# Path to your oh-my-zsh installation.
export ZSH=/Users/brandon/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt tmux)

# User configuration

source $ZSH/oh-my-zsh.sh

# Imported from .bash_profile
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/

# asdf
. $(brew --prefix asdf)/libexec/asdf.sh

git config --global core.editor "/usr/bin/vim"

# history in iex console
export ERL_AFLAGS="-kernel shell_history enabled"

# ALIASES
alias dc='docker compose'
alias ci='git commit -v'
alias s='git status'
alias c='clear'
alias d='git diff'
alias gl='git log'
alias pull='git pull'
alias co='git checkout'
alias a='git add'
alias x='exit'
alias serve='python -mSimpleHTTPServer'
alias mt='mix test'
alias killdocks='docker kill $(docker ps -q)'
alias gpo='git push -u origin $(git branch --show-current)'
alias mtw='mix test.watch'
alias vim='nvim'

# Vi mode
bindkey -v
# 10ms for key sequences
export KEYTIMEOUT=1

# Reverse Lookup
bindkey '^R' history-incremental-search-backward

# workaround for iterm + tmux + vim color scheme issue http://stackoverflow.com/questions/10158508/lose-vim-colorscheme-in-tmux-mode
alias tmux="TERM=screen-256color-bce tmux"

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export VISUAL=nvim
export EDITOR="$VISUAL"
git config --global core.editor "nvim"

# https://direnv.net/
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# make psql work
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export JAVA_HOME=/usr/local/opt/openjdk/bin/java
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
