(use-package direnv :config (direnv-mode))
(use-package magit :config (global-set-key (kbd "C-x g") 'magit-status))

(use-package projectile
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1)
  (setq projectile-project-search-path '("~/Code")))
