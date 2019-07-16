(setq exwm-input-global-keys
      `(([?\s-r] . exwm-reset)
	([?\s-²] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))
        ([?\s-w] . exwm-workspace-switch)
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9))))


(use-package exwm)
(use-package desktop-environment
  :config
  (setq desktop-environment-brightness-small-decrement "1%-")
  (setq desktop-environment-brightness-small-increment "1%+")
  (setq desktop-environment-brightness-normal-decrement "5%-")
  (setq desktop-environment-brightness-normal-increment "5%+")
  (desktop-environment-mode))
