# dotfiles

* [homesick](https://github.com/technicalpickles/homesick)

```bash
sudo mkdir /etc/git
sudo curl -s -o /etc/git/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
sudo curl -s -o /etc/git/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
sudo curl -s -o /etc/git/hub.bash_completion.sh https://raw.githubusercontent.com/github/hub/master/etc/hub.bash_completion.sh

gem install homesick
homesick clone git@github.com:mid0111/dotfiles.git
```

