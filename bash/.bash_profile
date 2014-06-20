source /usr/local/share/chruby/chruby.sh
chruby 1.9.3
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
source ~/.git_complete
source ~/.git_ps1
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
