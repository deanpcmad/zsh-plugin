# Export unlimited history and don't add any
# references to resetting git or databases to the
# history to avoid accidental use.
export HISTIGNORE='git reset --hard:rm -rf:rake db:reset'
export HISTCONTROL=ignorespace

export EDITOR='subl -w'

# Default RAILS_ENV to development
export RAILS_ENV=development

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"
alias gc=". /usr/local/bin/gitdate && git commit -v "

# Curl
alias curlxml="curl -H 'Accept: application/xml' -H 'Content-type: application/xml' "
alias curljson="curl -H 'Accept: application/json' -H 'Content-type: application/json' "

# Rails
alias be="bundle exec"
alias bi="bundle install -j8"
alias devlog="tail -f -n 500 log/production.log log/development.log"
alias sb="script/bootstrap"
alias rs="be rails server"
alias rake="be rake"
alias rspec="be rspec"
alias dbm="be rake db:migrate"
alias dbr="be rake db:rollback"
alias r="be rails"
alias rg="be rails generate"
alias rc="be rails console"
alias foreman="be foreman"
alias procman="be procman"
alias cap="be cap"
alias yard="be yard"
alias rackup="be rackup"
alias annotate="be annotate"
alias rbg="be rbg"

# Git
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gsh="git rev-parse --short HEAD"

# Project folder that we can `c [tab]` to
export PROJECTS=~/code

autoload -U ~/.oh-my-zsh/custom/plugins/deanpcmad/*(:t)

# Sublime Text
alias s="st ."

# vhosts
alias hosts='sudo nano /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Pipe my private key to my clipboard.
alias prikey="more ~/.ssh/id_rsa | xclip -selection clipboard | echo '=> Private key copied to pasteboard.'"
