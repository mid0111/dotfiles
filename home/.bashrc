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

### node version check ###
cd() {
    if [ "$1x" == "x" ]; then
        builtin cd ~
    else
        builtin cd "$1"
    fi

    if [ `which node` -a -f package.json ]; then
        CURRENT_NODE_VERSION=$(node --version | sed 's/v\(.*\)/\1/')
        REQUIRE_NODE_VERSION="UNKNOWN"
        if [ `which jq` ]; then
            REQUIRE_NODE_VERSION=$(jq .engines.node package.json)
        fi
        echo "🐤 🐤 🐤  Current node version: ${CURRENT_NODE_VERSION}"
        echo "🍄 🍄 🍄  Require node version: ${REQUIRE_NODE_VERSION}"
    fi
}

# yarn
export PATH="$HOME/.yarn/bin:$PATH"

### proxy ###
if [ -f ${HOME}/.proxy ]; then
    export HTTP_PROXY="http://localhost:8080"
    export HTTPS_PROXY=$http_proxy
fi

### completion ###
source ~/.bash_completion.d/*
