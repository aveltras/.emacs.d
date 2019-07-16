(global-display-line-numbers-mode)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(defconst screen-height-mm
  (nth 1 (alist-get 'mm-size (nth 0 (display-monitor-attributes-list)))))

(if (> screen-height-mm 200)
    (progn
      (add-to-list 'default-frame-alist '(font . "Iosevka-13"))
      (setq-default line-spacing 3))
    (progn
      (add-to-list 'default-frame-alist '(font . "Iosevka-18"))
      (setq-default line-spacing 4)))

(set-face-attribute 'mode-line nil :font "Exo 2 Medium-17")

; Mode line date and time display
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-format nil)
(setq display-time-default-load-average nil)
(display-time-mode 1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))
(use-package warm-night-theme :config (load-theme 'warm-night t))

