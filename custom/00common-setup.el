;;; package --- Summary:
;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
;;; Commentary:
;;; Code:
(windmove-default-keybindings)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Disable backups
(setq backup-inhibited t)
     
;;disable auto save
(setq auto-save-default nil)
(global-set-key [f5] 'comment-region)
(global-set-key [f6] 'uncomment-region)
(global-set-key [f2] 'indent-region)

;;;(setq inhibit-startup-message t) ; stop showing welcome page
(setq make-backup-files nil) ; stop creating ~ files

(setq python-shell-interpreter "/usr/bin/python2.7")

;; neotree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;(load-theme 'spolsky t)
(load-theme 'monokai t)
;;(load-theme 'cyberpunk t)
(global-nlinum-mode t)
(set-default-font "Monospace 10")

;;; hide tool-bar
(tool-bar-mode -1)
;; SMARTPARENS;;;;
(smartparens-global-mode t)
(require 'smartparens-config)

(setq ido-ignore-buffers '("\\` " "^\*"))
(global-auto-revert-mode t) ;; auto refresh buffers when files have changed (for Git)
(provide '00common-setup)
;;; 00common-setup.el ends here
