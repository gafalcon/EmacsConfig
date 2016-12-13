;; package --- My evil config
;;; Commentary:

;;; Code:
(use-package evil
  :config

  (evil-mode 1)
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

  (define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
  (define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
  (define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;;; Key-chord
  (require 'key-chord)
  (key-chord-mode 1)
;;; type jj or jk in insert mode to go back to normal mode
  (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
  (key-chord-define evil-replace-state-map "jk" 'evil-normal-state)

;;; diminish to keep mode line uncluttered
  (add-hook 'evil-god-start-hook (lambda () (diminish 'god-local-mode)))
  (add-hook 'evil-god-stop-hook (lambda () (diminish-undo 'god-local-mode)))

;;; abort evil-god-state command
  (evil-define-key 'god global-map [escape] 'evil-god-state-bail)


  ;; Setting initial states
  

  (evil-set-initial-state 'python-django-mode 'emacs)
  (add-hook 'git-commit-mode-hook 'evil-insert-state);; Git Commit Mode (a Magit minor mode):


  (require 'powerline)
  (require 'powerline-evil)
  (powerline-center-theme)
  (powerline-evil-center-color-theme)


  ;; (global-evil-tabs-mode t)
  ;; (define-key evil-normal-state-map (kbd "<C-tab>") 'other-window)

  ;; Use C-tab to switch between tabs
  ;; (define-key evil-normal-state-map (kbd "<C-tab>") 'elscreen-next)
  ;; (define-key evil-insert-state-map (kbd "<C-tab>") 'elscreen-next)

  ;; Change cursor color depending on mode
  (setq evil-emacs-state-cursor '("blue" box))
  (setq evil-normal-state-cursor '("spring green" box))
  (setq evil-insert-state-cursor '("white" bar))
  (setq evil-visual-state-cursor '("orange" box))
  (setq evil-replace-state-cursor '("red" bar))
  (setq evil-operator-state-cursor '("red" hollow))

  (use-package evil-magit)
  (use-package evil-leader
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "g" 'magit-status
      "h" 'help
      "k" 'kill-buffer)
    )
  (require 'evil-org)

  (use-package evil-mc
    :config
    (evil-mc-mode 1)
    )


  (evil-add-hjkl-bindings occur-mode-map 'emacs)
  )
(provide 'config-evil)
;;; config-evil.el ends here
