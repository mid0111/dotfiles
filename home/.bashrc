### PS ###
source /etc/bash_completion.d/git-prompt
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### alias ###
alias open=xdg-open
alias ll="ls -la"
alias e="emacs &"


export JAVA_HOME=/usr/lib/jvm/java-7-oracle
export PATH=/usr/lib/jvm/java-7-oracle/bin:$PATH
export CLASSPATH=.:/usr/lib/jvm/java-7-oracle


### PATH ###
export PATH=${PATH}:/usr/share/doc/git/contrib/diff-highlight


