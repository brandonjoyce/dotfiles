ssh-add -L &> /dev/null
if [ $? -eq 1 ]; then
  ssh-add
fi
# Path to your oh-my-zsh installation.
export ZSH=/Users/bjoyce/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Imported from .bash_profile
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
PATH=$PATH:/usr/local/sbin
git config --global core.editor "/usr/bin/vim"

# ALIASES
alias be='bundle exec'
alias rs='bundle exec rspec'
alias cap='bundle exec cap'
alias ci='git commit -v'
alias s='git status'
alias d='git diff'
alias gl='git log'
alias pull='git pull'
alias co='git checkout'
alias a='git add'
alias x='exit'
alias serve='python -mSimpleHTTPServer'
alias cop='bundle exec rubocop'
alias avitunnel='sudo ssh -D 8080 -C -N sonerdy@workflow.avifoodsystems.com'
alias e='emacs'
alias mt='mix test'
alias killdocks='docker stop $(docker ps -q); docker rm $(docker ps -a -q);docker rmi -f $(docker images -a -q);docker volume rm $(docker volume ls -f dangling=true -q)'
function deploytarget() { curl --data "app_env=production&strict=1&app_name=$@" https://deploytargets.cmmint.net/lookup }

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# workaround for iterm + tmux + vim color scheme issue http://stackoverflow.com/questions/10158508/lose-vim-colorscheme-in-tmux-mode
alias tmux="TERM=screen-256color-bce tmux"

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export EDITOR='vim'

if [ -d ~/projects ] ; then
  source ~/.projects
fi

if [ -d ~/.custom ] ; then
  source ~/.custom
fi

export NVM_DIR="/Users/bjoyce/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
