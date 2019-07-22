
(use-package exwm
  :config
  (setq exwm-workspace-minibuffer-position 'bottom)
  (setq exwm-input-global-keys
      `(([?\s-r] . exwm-reset)
	([?\s-²] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))
        ([?\s-w] . exwm-workspace-switch)
	([?\s-&] . (lambda () (interactive) (exwm-workspace-switch-create 0)))
	([?\s-é] . (lambda () (interactive) (exwm-workspace-switch-create 1)))
	([?\s-\"] . (lambda () (interactive) (exwm-workspace-switch-create 2)))
	([?\s-'] . (lambda () (interactive) (exwm-workspace-switch-create 3)))
	([?\s-(] . (lambda () (interactive) (exwm-workspace-switch-create 4)))
	([?\s--] . (lambda () (interactive) (exwm-workspace-switch-create 5)))
	([?\s-è] . (lambda () (interactive) (exwm-workspace-switch-create 6)))
	([?\s-_] . (lambda () (interactive) (exwm-workspace-switch-create 7)))
	([?\s-ç] . (lambda () (interactive) (exwm-workspace-switch-create 8)))
	([?\s-à] . (lambda () (interactive) (exwm-workspace-switch-create 9)))
	))
  (add-hook 'exwm-update-class-hook
          (lambda ()
            (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                        (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-class-name))))
  (add-hook 'exwm-update-title-hook
          (lambda ()
            (when (or (not exwm-instance-name)
                      (string-prefix-p "sun-awt-X11-" exwm-instance-name)
                      (string= "gimp" exwm-instance-name))
              (exwm-workspace-rename-buffer exwm-title))))
  )

(use-package desktop-environment
  :config
  (setq desktop-environment-brightness-small-decrement "1%-")
  (setq desktop-environment-brightness-small-increment "1%+")
  (setq desktop-environment-brightness-normal-decrement "5%-")
  (setq desktop-environment-brightness-normal-increment "5%+")
  (desktop-environment-mode))
