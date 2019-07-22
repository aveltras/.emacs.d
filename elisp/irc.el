(setq-default erc-fill-function 'erc-fill-variable)
(setq-default erc-timestamp-format "[%H:%M] ")
(setq-default erc-timestamp-only-if-changed-flag nil)
(setq-default erc-fill-prefix "      + ")
(setq-default erc-insert-timestamp-function 'erc-insert-timestamp-left)
(setq-default erc-hide-list '("JOIN" "PART" "QUIT"))
(add-hook 'erc-mode-hook (lambda () (auto-fill-mode 0)))

(defun aveltras/irc ()
  (interactive)
  (setq-default erc-fill-column (- (window-width) 2))
  (let* ((irc-credentials (auth-source-pass-parse-entry "irccloud"))
         (server (cdr (assoc "host" irc-credentials)))
         (pass (cdr (assoc 'secret irc-credentials)))
         (user (cdr (assoc "user" irc-credentials)))
         (port (cdr (assoc "port" irc-credentials))))
    (erc-tls :server server
             :port port
             :nick user
             :password pass)))
