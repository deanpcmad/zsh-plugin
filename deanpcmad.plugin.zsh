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

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."

alias c="code ."

# Shortcuts
alias dl="cd ~/Downloads"
alias g="git"
alias h="history"

# Rails
alias be="bundle exec"
alias bi="bundle install -j $(nproc)"
alias dev="bin/dev"
alias r="bin/rails"
alias rs="bin/rails server"
alias dbm="bin/rails db:migrate"
alias dbr="bin/rails db:rollback"
#alias rg="bin/rails generate"
alias rc="bin/rails console"

alias dcdev="docker compose -f docker-compose.dev.yml up"
alias dc="docker compose"

# SSH Tunnel
#alias tunnel="ssh -p 2222 -R 8080:localhost:3000 root@deanpcmad-tools"

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
alias gr="git remote -v"

# Curl
alias curlxml="curl -H 'Accept: application/xml' -H 'Content-type: application/xml' "
alias curljson="curl -H 'Accept: application/json' -H 'Content-type: application/json' "

# vhosts
alias hosts='sudo nano /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# untar
alias untar='tar xvf'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_ed25519.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"

alias ytmp4="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
