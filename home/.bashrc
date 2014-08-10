### Environment settings ###
EMACS_DIR="/Applications/Emacs.app/Contents/MacOS"
GIT_PROMPT_PATH="/etc/bash_completion.d/git-prompt.sh"
GIT_COMPLETION_PATH="/etc/bash_completion.d/git-completion.bash"
HUB_COMPLETION_PATH="/etc/hub.bash_completion.sh"

### alias ###
alias ll="ls -la"
alias e='${EMACS_DIR}/bin/emacsclient -n'
alias i="idea.sh &"
alias wget="curl -O"
alias grep="grep -n --color=auto"
alias egrep="egrep -n --color=auto"
alias ls='gls --color=auto'

### git, github ###
source ${GIT_COMPLETION_PATH}
if [ -f ${HUB_COMPLETION_PATH} ]; then
    source ${HUB_COMPLETION_PATH}
fi

### gulp-completion ###
eval "$(gulp --completion=bash)"

### grunt-completion ###
eval "$(grunt --completion=bash)"

### rvm ###
eval "$(rbenv init -)"

### boot2docker ###
export DOCKER_HOST=tcp://192.168.59.103:2375

### PS with git ###
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### PATH ###
source ${GIT_PROMPT_PATH}
export PATH=${PATH}:/usr/share/doc/git/contrib:$HOME/.cask/bin

