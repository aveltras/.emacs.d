(use-package haskell-mode)
(use-package dante
  :after haskell-mode
  :commands dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (add-hook 'haskell-mode-hook 'dante-mode))
