;;; package --- Mi user helm config
;;; Commentary:

;;; Code:
(helm-mode 1)
(require 'helm-config)
(global-set-key (kbd "M-p") 'helm-projectile)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)

(provide 'config-helm.el)
;;; config-helm.el ends here
