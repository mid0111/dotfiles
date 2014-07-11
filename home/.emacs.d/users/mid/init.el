;; CommandとOptionを入れ替える
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; Character code
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; フォント
(set-face-attribute 
 'default nil
 :family "CosmicSansNeueMono"
 :height 150)

;; テーマ
(load-theme 'solarized-dark t)

;; ブラウザ
(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program 
  (if (file-exists-p "/usr/bin/chromium")
    "/usr/bin/chromium" "/usr/bin/google-chrome"))

;; 桁数の表示
(add-hook 'text-mode-hook 'ruler-mode)

;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)
