;;; package --- Mi user core config
;;; Commentary:

;;; Code:


;; Navigate between windows using Alt-1, Alt-2, Shift-left, shift-up, shift-right
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
(global-set-key [f8] 'neotree-toggle)
;;;(setq inhibit-startup-message t) ; stop showing welcome page
(setq make-backup-files nil) ; stop creating ~ files

;; SMARTPARENS;;;;
(use-package smartparens
  :config
  (smartparens-global-mode t)
  (sp-pair "\"" "\"" :wrap "C-\"")

  (use-package smartparens-config)
  )


(global-auto-revert-mode t) ;; auto refresh buffers when files have changed (for Git)
(setq vc-follow-symlinks t) ;; Follow symlinks
;; Global code-folding
(add-hook 'prog-mode-hook #'hs-minor-mode)

;; Global imenu keybinding
(global-set-key (kbd "C-c i") 'helm-semantic-or-imenu)
;; Global semantic
;;(global-set-key (kbd "C-c i") 'helm-semantic)
(global-set-key (kbd "M-s s") 'swiper)
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

;;(setq python-shell-interpreter "/usr/bin/python2.7")

;; Open urls with firefox
(setq browse-url-generic-program (executable-find "firefox")
      browse-url-browser-function 'browse-url-generic)

(setq paradox-github-token "0e2c3ee90deb94ef8d7284c18c6b4a54770394a1")

(setenv "PATH" (concat "/usr/share/smlnj/bin:" (getenv "PATH")))
(setq exec-path (cons "/usr/share/smlnj/bin"  exec-path))

(add-to-list 'auto-mode-alist '("Cask$" . emacs-lisp-mode))
;; Start org in visual-line mode
(add-hook 'org-mode-hook (lambda ()
			   (visual-line-mode 1)))

(recentf-mode 1)
(provide 'config-core)
;;; config-core.el ends here
