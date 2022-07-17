# Set the PATH to include /usr/local/bin
export PATH=$PATH:/usr/local/bin:/home/dean/.bin:/home/dean/.local/bin

# Make VS Code the default editor
export EDITOR='code --wait'

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

# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"

# Rails
alias be="bundle exec"
alias bi="bundle install -j $(nproc)"
alias devlog="tail -f -n 500 log/production.log log/development.log"
alias rd="bin/dev"
alias rs="bin/rails server -b 0.0.0.0"
alias dbm="bin/rails db:migrate"
alias dbr="bin/rails db:rollback"
alias rg="bin/rails generate"
alias rc="bin/rails console"

# Starts the docker-hoster container
alias dockerhoster="docker run -d -v /var/run/docker.sock:/tmp/docker.sock -v /etc/hosts:/tmp/hosts dvdarias/docker-hoster"

# Run Docker Compose dev
alias dcdev="docker compose -f docker-compose.dev.yml up"

# SSH Tunnel
alias tunnel="ssh -p 2222 -R 8080:localhost:3000 root@deanpcmad-tools"

# Jekyll
alias js="be jekyll s -H 0.0.0.0"

# Git
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
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

# vhosts
alias hosts='sudo nano /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"

alias ytmp4="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
