
;; helm config
(require 'helm-config)
(helm-mode 1)


(global-set-key (kbd "C-:") 'ac-complete-with-helm)
(global-set-key (kbd "M-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(define-key ac-complete-mode-map (kbd "C-:") 'ac-complete-with-helm)
