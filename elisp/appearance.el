(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 1)
;; (global-display-line-numbers-mode)
(pixel-scroll-mode)

(if (equal "clevo" (system-name))
    (progn
      (add-to-list 'default-frame-alist '(font . "Fantasque Sans Mono-18"))
      (setq-default line-spacing 4))
  (progn
    (add-to-list 'default-frame-alist '(font . "Fantasque Sans Mono-13"))
    (setq-default line-spacing 4)))

; Mode line date and time display
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-format nil)
(setq display-time-default-load-average nil)
(display-time-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(use-package base16-theme :config (load-theme 'base16-gruvbox-dark-pale t))
