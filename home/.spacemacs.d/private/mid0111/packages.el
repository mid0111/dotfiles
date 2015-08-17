;;; packages.el --- mid0111 Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq mid0111-packages
      '(
        ;; package names go here
        helm-ls-git
        helm-git-grep ))

;; List of packages to exclude.
(setq mid0111-excluded-packages '())

;; For each package, define a function mid0111/init-<package-name>
;;
;; (defun mid0111/init-my-package ()
;;   "Initialize my package"
;;   )
;;
(defun mid0111/init-helm-ls-git ()
  (use-package helm-ls-git
    :config
    (setq-default helm-ls-git-show-abs-or-relative 'absolute)))

(defun mid0111/init-helm-git-grep ())

;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

