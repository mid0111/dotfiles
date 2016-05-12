# dotfiles

* [homesick](https://github.com/technicalpickles/homesick)

## Installation

```bash
sudo mkdir /etc/git
sudo curl -s -o /etc/git/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
sudo curl -s -o /etc/git/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
sudo curl -s -o /etc/git/hub.bash_completion.sh https://raw.githubusercontent.com/github/hub/master/etc/hub.bash_completion.sh

# install hub
brew install hub
ln -s /usr/local/Cellar/hub/2.2.1/bin/hub /usr/local/bin/hub

gem install homesick
homesick clone git@github.com:mid0111/dotfiles.git
```

## Proxy settings

### home/.spacemacs

Add scripts below.

```elisp
(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."
  ;; proxy settings
  (setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10.*\\)")
     ("http" . "proxy-server:8080")
     ("https" . "proxy-server:8080")))

  (setq url-http-proxy-basic-auth-storage
    (list (list "proxy-server:8080"
                (cons "Input your LDAP UID !"
                      (base64-encode-string "username:password")))))
)
```
