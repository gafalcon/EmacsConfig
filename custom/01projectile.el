(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)
(setq projectile-indexing-method 'git)
;; Press command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; Press command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)
  
