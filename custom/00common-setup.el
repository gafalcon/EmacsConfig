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
(global-set-key [f12] 'multi-term-dedicated-toggle)
;;;(setq inhibit-startup-message t) ; stop showing welcome page
(setq make-backup-files nil) ; stop creating ~ files

;;(setq python-shell-interpreter "/usr/bin/python2.7")

;; neotree
(add-to-list 'load-path "~/.emacs.d/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;(load-theme 'spolsky t)
;;(load-theme 'monokai t)
;;(load-theme 'cyberpunk t)
;; (load-theme 'junio t)
(if (display-graphic-p)
	(load-theme 'dracula t)
  (load-theme 'cyberpunk t))
;;(load-theme 'deeper-blue t)
;;(load-theme 'dracula t)
(require 'doom-themes)
;; (load-theme 'doom-one t) ;; or doom-dark, etc.

(set-face-attribute 'region nil :background "#3d4451")
(set-face-attribute 'region nil :foreground 'unspecified)
;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)

;; ;; Custom neotree theme
(require 'doom-neotree)

(global-nlinum-mode t)
;;(set-frame-font "Terminus Bold 9")
;;(set-frame-font "DejaVu Sans Mono Book 9")
;;; hide tool-bar and scroll bar and menu bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
;; SMARTPARENS;;;;
(smartparens-global-mode t)
(require 'smartparens-config)

(global-auto-revert-mode t) ;; auto refresh buffers when files have changed (for Git)

;; Global code-folding
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; Global imenu keybinding
(global-set-key (kbd "C-c i") 'helm-semantic-or-imenu)
;; Global semantic
;;(global-set-key (kbd "C-c i") 'helm-semantic)

(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

;; Expand block when goto line
(defadvice goto-line (after expand-after-goto-line
							activate compile)
  "Hideshow-expand affected block when using 'goto-line' in a collapsed buffer."
  (save-excursion
	(hs-show-block)))

;; Expand block when imenu
(defadvice helm-semantic-or-imenu (after expand-after-goto-line
							activate compile)
  "Hideshow-expand affected block when using 'goto-line' in a collapsed buffer."
  (save-excursion
	(hs-show-block)))

;; ;; Expand block when semantic
;; (defadvice helm-semantic (after expand-after-goto-line
;; 							activate compile)
;;   "Hideshow-expand affected block when using 'goto-line' in a collapsed buffer."
;;   (save-excursion
;; 	(hs-show-block)))

(setq multi-term-program "/usr/bin/zsh")

(setq org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)

(provide '00common-setup)
;;; 00common-setup.el ends here
