
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/mid/.gvm/bin/gvm-init.sh" ]] && source "/home/mid/.gvm/bin/gvm-init.sh"

if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
