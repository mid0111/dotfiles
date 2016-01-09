### Environment settings ###
ALIAS_SETTINGS=".bash/alias"
GIT_SETTINGS=".bash/git"

### alias ###
if [ -f $ALIAS_SETTINGS ]; then
    source $ALIAS_SETTINGS
fi

### git, github ###
if [ -f $GIT_SETTINGS ]; then
    source $GIT_SETTINGS
fi

### gulp-completion ###
eval "$(gulp --completion=bash)"

### docker ###
eval "$(docker-machine env default)"
export DOCKER_IP=$(echo $DOCKER_HOST | sed 's/tcp:\/\/\([^:]*\).*/\1/')
if [ -f ~/.proxy ]; then
    export NO_PROXY=$(echo $DOCKER_HOST | sed 's/tcp:\/\/\([^:]*\).*/\1/')
fi

# added by travis gem
[ -f /Users/mid/.travis/travis.sh ] && source /Users/mid/.travis/travis.sh

### proxy ###
if [ -f ~/.proxy ]; then
    source ~/.proxy
    export http_proxy=http://${PROXY_USER}:${PROXY_PASSWD}@${PROXY_HOST}:${PROXY_PORT}
    export HTTP_PROXY=$http_proxy
    export https_proxy=$http_proxy
    export HTTPS_PROXY=$http_proxy
fi
