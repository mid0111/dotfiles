### PS ###
source /etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### alias ###
alias open=xdg-open
alias ll="ls -la"
alias e="emacs &"
alias i="idea.sh &"
alias wget="curl -O"

### JAVA ###
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=/usr/lib/jvm/java-7-oracle/bin:$PATH
export CLASSPATH=.:/usr/lib/jvm/java-7-oracle

### grunt-completion ###
eval "$(grunt --completion=bash)"

### PATH ###
export PATH=${PATH}:/usr/share/doc/git/contrib/diff-highlight:$HOME/.cask/bin



#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/mid/.gvm/bin/gvm-init.sh" ]] && source "/home/mid/.gvm/bin/gvm-init.sh"
