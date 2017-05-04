;;; package --- Mi user interface config
;;; Commentary:

;;; Code:
;;; hide tool-bar and scroll bar and menu bar
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; Essential settings.
(setq inhibit-splash-screen t
      inhibit-startup-message t
      inhibit-startup-echo-area-message t)
;; theme
;; (if (display-graphic-p)
;; 	(load-theme 'atom-dark t)
;;   (load-theme 'cyberpunk t))
;; (load-theme 'atom-dark t)
(load-theme 'base16-dracula t)
(use-package doom-themes)
;; (require 'doom-themes)
(set-face-attribute 'region nil :background "#3d4451")
(set-face-attribute 'region nil :foreground 'unspecified)
(set-face-attribute 'default nil :height 100)
;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)

;; ;; Custom neotree theme
(use-package doom-neotree)
;; (require 'doom-neotree)

(global-nlinum-mode t)
(set-frame-font "Monospace Bold 11" nil t)



(setq org-fontify-whole-heading-line t
      org-fontify-done-headline t
      org-fontify-quote-and-verse-blocks t)

(toggle-frame-maximized)

(provide 'config-ui.el)
;;; config-ui.el ends here
