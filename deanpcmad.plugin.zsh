# Set the PATH to include /usr/local/bin
export PATH=$PATH:/usr/local/bin

export EDITOR='code -w'

# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=50000000;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;

# Make some commands not show up in history
export HISTIGNORE=" *:ls:cd:cd -:pwd:exit:date:* --help:* -h";

# Default RAILS_ENV to development
export RAILS_ENV=development

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though

# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"

# Rails
alias be="bundle exec"
alias bi="bundle install -j12"
alias devlog="tail -f -n 500 log/production.log log/development.log"
alias rs="./bin/rails server"
alias rg="./bin/rails generate"
alias rc="./bin/rails console"
alias dbm="./bin/rails db:migrate"
alias dbr="./bin/rails db:rollback"

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin'
alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -am'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsh="git rev-parse --short HEAD"

# Curl
alias curlxml="curl -H 'Accept: application/xml' -H 'Content-type: application/xml' "
alias curljson="curl -H 'Accept: application/json' -H 'Content-type: application/json' "

# Project folder that we can `c [tab]` to
export PROJECTS=~/code

autoload -U ~/.oh-my-zsh/custom/plugins/deanpcmad/*(:t)

# Sublime Text
# alias s="subl ."

# vhosts
alias hosts='sudo nano /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Pipe my private key to my clipboard.
# alias prikey="more ~/.ssh/id_rsa | xclip -selection clipboard | echo '=> Private key copied to pasteboard.'"
