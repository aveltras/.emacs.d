
(defconst user-settings-dir
  (concat user-emacs-directory "elisp"))
(defun load-user-file (file)
  (load-file (expand-file-name file user-settings-dir)))

; Straight package management
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(load-user-file "core.el")
;; (load-user-file "desktop.el")
(load-user-file "appearance.el")
(load-user-file "project.el")
(load-user-file "irc.el")
(load-user-file "mail.el")
(load-user-file "haskell.el")
(put 'secrets-mode 'disabled nil)
