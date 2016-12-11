
;; helm config
(require 'helm-config)
(helm-mode 1)


(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(global-set-key (kbd "M-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)
