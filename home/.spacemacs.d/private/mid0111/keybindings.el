;; Treat command as meta
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)

(define-key global-map (kbd "C-c C-g") 'helm-ls-git-ls)
(define-key global-map (kbd "C-c g") 'helm-git-grep)
(define-key global-map (kbd "C-c M-g") 'helm-git-grep-at-point)
(define-key global-map (kbd "C->") 'mc/mark-next-like-this)
(define-key global-map (kbd "C-<") 'mc/mark-previous-like-this)
(define-key global-map (kbd "C-c C-<") 'mc/mark-all-like-this)
