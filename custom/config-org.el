(add-to-list 'org-file-apps '("pdf" . "okular %s"))
(add-to-list 'org-file-apps '("html" . "firefox %s"))
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-log-done 'time
      org-enforce-todo-dependencies t
      )
