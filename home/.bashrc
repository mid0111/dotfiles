### Environment settings ###
EMACS_DIR="/Applications/Emacs.app/Contents/MacOS"
GIT_PROMPT_PATH="/etc/bash_completion.d/git-prompt.sh"
GIT_COMPLETION_PATH="/etc/bash_completion.d/git-completion.bash"
HUB_COMPLETION_PATH="/etc/hub.bash_completion.sh"
AWS_CONFIG_PATH="/Users/mid/.aws/user"

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

### Emacs and cask for Mac ###
export EMACS=${EMACS_DIR}/Emacs

### gulp-completion ###
eval "$(gulp --completion=bash)"

### grunt-completion ###
eval "$(grunt --completion=bash)"

### rvm ###
eval "$(rbenv init -)"

### boot2docker ###
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/mid/.boot2docker/certs/boot2docker-vm

### aws ###
if [ -f ${AWS_CONFIG_PATH} ]; then
    source ${AWS_CONFIG_PATH}
fi
export EC2_HOME=/usr/local/ec2/ec2-api-tools

### JAVA ###
export JAVA_HOME=$(/usr/libexec/java_home)

### PS with git ###
export PS1='\[\033[01;34m\]\W\[\033[00m\]\[\033[00;032m\]$(__git_ps1)\[\033[00m\] % '

### PATH ###
source ${GIT_PROMPT_PATH}
export PATH=${PATH}:/usr/share/doc/git/contrib:$HOME/.cask/bin:$EC2_HOME/bin:${HOME}/.rbenv/versions/2.1.2/bin


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:/Library/Developer/CommandLineTools/usr/bin:$PATH"

# added by travis gem
[ -f /Users/mid/.travis/travis.sh ] && source /Users/mid/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
source '/Users/mid/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/mid/google-cloud-sdk/completion.bash.inc'
