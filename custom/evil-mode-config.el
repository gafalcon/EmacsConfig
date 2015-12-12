;;; package --- Summary asdf
;;; Commentary:
;;; Code:

;;; imap jf <ESC> equivalent
;;;(define-key evil-insert-state-map (kbd "jf") 'evil-normal-state)

;;; getting :n[ew] to work
(evil-ex-define-cmd "n[ew]" 'evil-window-new)

;;; Use fine grain undo
(setq evil-want-fine-undo t)
;;; Switch to god-mode for the next command
(evil-define-key 'normal global-map "º" 'evil-execute-in-god-state)

;;; Expand region command
(evil-define-key 'normal global-map "\"" 'er/expand-region)
;;; Retract region command
(evil-define-key 'normal global-map "·" 'er/contract-region)

;;; type jj or jk in insert mode to go back to normal mode
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define evil-replace-state-map "jk" 'evil-normal-state)
;;; diminish to keep mode line uncluttered
(add-hook 'evil-god-start-hook (lambda () (diminish 'god-local-mode)))
(add-hook 'evil-god-stop-hook (lambda () (diminish-undo 'god-local-mode)))

;;; abort evil-god-state command
(evil-define-key 'god global-map [escape] 'evil-god-state-bail)

;; ;; change mode-line color by evil state
;; (lexical-let ((default-color (cons (face-background 'mode-line)
;; 				   (face-foreground 'mode-line))))
;;   (add-hook 'post-command-hook
;; 	    (lambda ()
;; 	      (let ((color (cond ((minibufferp) default-color)
;; 				 ((evil-insert-state-p) '("#c12b2b" . "#ffffff"))
;; 				 ((evil-emacs-state-p)  '("#444488" . "#ffffff"))
;; 				 ((buffer-modified-p)   '("#006fa0" . "#ffffff"))
;; 				 (t default-color))))
;; 		(set-face-background 'mode-line (car color))
;; 		(set-face-foreground 'mode-line (cdr color))))))

(require 'powerline)
(require 'powerline-evil)
(powerline-center-theme)
(powerline-evil-center-color-theme)

(evil-set-initial-state 'python-django-mode 'emacs)
;;; Git Commit Mode (a Magit minor mode):
(add-hook 'git-commit-mode-hook 'evil-insert-state)

(global-evil-tabs-mode t)
;; (define-key evil-normal-state-map (kbd "<C-tab>") 'other-window)

;; Use C-tab to switch between tabs
(define-key evil-normal-state-map (kbd "<C-tab>") 'elscreen-next)
(define-key evil-insert-state-map (kbd "<C-tab>") 'elscreen-next)

;; Change cursor color depending on mode
(setq evil-emacs-state-cursor '("blue" box))
(setq evil-normal-state-cursor '("spring green" box))
(setq evil-insert-state-cursor '("white" bar))
(setq evil-visual-state-cursor '("orange" box))
(setq evil-replace-state-cursor '("red" bar))
(setq evil-operator-state-cursor '("red" hollow))
;; (provide 'evil-mode-config)
;; ;;; evil-mode-config.el ends here
