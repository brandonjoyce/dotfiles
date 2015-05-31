source /usr/local/share/chruby/chruby.sh
PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH
git config --global core.editor "/usr/bin/vim"
source ~/.git_complete
source ~/.git_ps1
PS1='[\u@ \W$(__git_ps1 " (%s)")]\$ '
export BOXEN_REDIS_IP=192.168.33.10
eval "$(ssh-agent)"
ssh-add ~/.ssh/id_rsa
ssh-add ~/.ssh/al_rsa
ssh-add ~/.ssh/brandon_ryan_rsa
alias be='bundle exec'
alias rs='bundle exec rspec'
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
alias pair='git config user.name "Brandon Joyce & Ryan Bone" && git config user.email "brandon-ryan@covermymeds.com"'
alias justme='git config user.name "Brandon Joyce" && git config user.email "bjoyce@covermymeds.com"'
alias hp='cd ~/Source/cmm/end_of_line; TEST_ENV=integration rs -t happy_path; cd -'
export EDITOR='vim'
chruby 2.0.0
source ~/.secrets
