(auto-save-visited-mode 1)
(setq inhibit-startup-screen t)
(setq auto-save-visited-interval 1)
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file) (load custom-file))

(global-set-key (kbd "C-x é") 'split-window)
(global-set-key (kbd "C-x \"") 'split-window-horizontally)
(global-set-key (kbd "C-x &") 'delete-other-windows)
(global-set-key (kbd "C-x à") 'delete-window)

(setq scroll-margin 10
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

(setq make-backup-files nil)
(show-paren-mode t) ; Highlights matching parens
(fset 'yes-or-no-p 'y-or-n-p) ; y/n instead of yes/no
(blink-cursor-mode -1) ; No need to flash the cursor
(column-number-mode t) ; Show column in mode-line
(delete-selection-mode 1) ; Replace selection on insert
(setq-default truncate-lines t ; Don't wrap
              indent-tabs-mode nil)

(setq epa-pinentry-mode 'loopback)
;; (pinentry-start)
(auth-source-pass-enable)

(use-package alert
  :commands (alert)
  :init
  (setq alert-default-style 'notifier))

(use-package company :config (add-hook 'after-init-hook 'global-company-mode))
(use-package ace-window
  :config
  (global-set-key (kbd "M-o") 'ace-window)
  (setq aw-keys '(?a ?z ?e ?r ?t ?q ?s ?d ?f)))

(use-package counsel
  :config
  (ivy-mode 1)
  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)

  (global-set-key (kbd "C-h f") 'counsel-describe-function)
  (global-set-key (kbd "C-h v") 'counsel-describe-variable)
  (global-set-key (kbd "C-h l") 'counsel-find-library)
  (global-set-key (kbd "C-h i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "C-h u") 'counsel-unicode-char)

  (global-set-key (kbd "C-c C-r") 'ivy-resume)

  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) "))

(use-package json-mode)
(use-package yaml-mode)
(use-package nix-mode :after json-mode :mode "\\.nix\\'")

(use-package expand-region
  :config
  (global-set-key (kbd "C-=") 'er/expand-region)
  (global-set-key (kbd "C-x C-=") 'er/contract-region))

(use-package avy
  :config
  (global-set-key (kbd "C-:") 'avy-goto-char)
  (avy-setup-default))

(use-package dired-subtree :config (define-key dired-mode-map (kbd "<tab>") 'dired-subtree-toggle))

(setq-default dired-listing-switches "-laGh1v --group-directories-first")
