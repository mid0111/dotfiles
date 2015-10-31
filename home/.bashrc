### Environment settings ###
GIT_PROMPT_PATH="/etc/bash_completion.d/git-prompt.sh"
GIT_COMPLETION_PATH="/etc/bash_completion.d/git-completion.bash"
HUB_COMPLETION_PATH="/etc/hub.bash_completion.sh"
AWS_CONFIG_PATH="/Users/mid/.aws/user"

### alias ###
alias ll="ls -la"
alias e='emacsclient -n'
alias i="idea.sh &"
alias wget="curl -O"
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias ls='gls --color=auto'

### git, github ###
source ${GIT_COMPLETION_PATH}
if [ -f ${HUB_COMPLETION_PATH} ]; then
  source ${HUB_COMPLETION_PATH}
fi

source ${GIT_PROMPT_PATH}
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1

### gulp-completion ###
eval "$(gulp --completion=bash)"

### docker ###
eval "$(docker-machine env default)"

### aws ###
if [ -f ${AWS_CONFIG_PATH} ]; then
  source ${AWS_CONFIG_PATH}
fi
export EC2_HOME=/usr/local/ec2/ec2-api-tools

### JAVA ###
export JAVA_HOME=$(/usr/libexec/java_home)

### PS with git ###
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

# added by travis gem
[ -f /Users/mid/.travis/travis.sh ] && source /Users/mid/.travis/travis.sh
