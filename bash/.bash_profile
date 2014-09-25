source /usr/local/share/chruby/chruby.sh
chruby ruby 2.1
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
git config --global core.editor "/usr/bin/vim"
source ~/.git_complete
source ~/.git_ps1
PS1='[\u@ \W$(__git_ps1 " (%s)")]\$ '
export BOXEN_REDIS_IP=192.168.33.10
eval "$(ssh-agent)"
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/pair_rsa
