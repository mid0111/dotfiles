### Environment settings ###
ALIAS_SETTINGS="${HOME}/.bash/alias"
GIT_SETTINGS="${HOME}/.bash/git"

### alias ###
if [ -f $ALIAS_SETTINGS ]; then
    source $ALIAS_SETTINGS
fi

### git, github ###
if [ -f $GIT_SETTINGS ]; then
    source $GIT_SETTINGS
fi

### gulp-completion ###
if [ `which gulp` ]; then
    eval "$(gulp --completion=bash)"
fi

### docker ###
if vboxmanage list runningvms | grep default > /dev/null ; then
    eval "$(docker-machine env default)"
    export DOCKER_IP=$(echo $DOCKER_HOST | sed 's/tcp:\/\/\([^:]*\).*/\1/')
    if [ -f ${HOME}/.proxy ]; then
        export NO_PROXY=$(echo $DOCKER_HOST | sed 's/tcp:\/\/\([^:]*\).*/\1/')
    fi
fi

# added by travis gem
[ -f /Users/mid/.travis/travis.sh ] && source /Users/mid/.travis/travis.sh

### proxy ###
if [ -f ${HOME}/.proxy ]; then
    source ${HOME}/.proxy
    # export http_proxy=http://${PROXY_USER}:${PROXY_PASSWD}@${PROXY_HOST}:${PROXY_PORT}
    export http_proxy="http://localhost:8080"
    export HTTP_PROXY=$http_proxy
    export https_proxy=$http_proxy
    export HTTPS_PROXY=$http_proxy

#     cat > ${HOME}/.curlrc <<EOF
# proxy-user = "${PROXY_USER}:${PROXY_PASSWD}"
# proxy = "http://${PROXY_HOST}:${PROXY_PORT}"
# EOF
fi

