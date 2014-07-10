### PS ###
source /etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### alias ###
alias ll="ls -la"
alias e="emacs &"
alias i="idea.sh &"
alias wget="curl -O"

### grunt-completion ###
eval "$(grunt --completion=bash)"

### rvm ###
eval "$(rbenv init -)"

### PATH ###
export PATH=${PATH}:/usr/share/doc/git/contrib/diff-highlight:$HOME/.cask/bin

