EMACS_APP="/Applications/Emacs.app/Contents/MacOS/Emacs"

### PS ###
source /etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### alias ###
alias ll="ls -la"
alias e="${EMACS_APP} &"
alias i="idea.sh &"
alias wget="curl -O"
alias grep="grep -n --color=auto"
alias egrep="egrep -n --color=auto"
alias ls='gls --color=auto'

### git, github ###
if [ -f /etc/bash_completion.d/git-completion.bash ]; then
    source /etc/bash_completion.d/git-completion.bash 
fi
if [ -f /etc/hub.bash_completion.sh ]; then
    source /etc/hub.bash_completion.sh
fi

### grunt-completion ###
eval "$(grunt --completion=bash)"

### rvm ###
eval "$(rbenv init -)"

### PATH ###
export PATH=${PATH}:/usr/share/doc/git/contrib:$HOME/.cask/bin

