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

export PATH=$HOME/.nodebrew/current/bin:$PATH
