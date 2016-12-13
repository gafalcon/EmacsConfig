;;; package --- core-company.el
;;; Commentary:
;;; Copied from Emacs doom
;;; Code:

(use-package company
  :commands (company-mode global-company-mode company-complete
             company-complete-common company-manual-begin company-grab-line)
  :init
  (setq company-idle-delay 1
        company-minimum-prefix-length 2
        company-tooltip-limit 10
        company-dabbrev-downcase nil
        company-dabbrev-ignore-case nil
        company-dabbrev-code-other-buffers t
        company-tooltip-align-annotations t
        company-require-match 'never
        company-global-modes '(not eshell-mode comint-mode erc-mode message-mode help-mode)
        company-frontends '(company-pseudo-tooltip-frontend company-echo-metadata-frontend)
        company-backends '(company-capf company-yasnippet)
	company-quickhelp-max-lines 15
	)
        ;; company-quickhelp-delay nil)
        ;; company-statistics-file (concat doom-temp-dir "/company-stats-cache.el"))
  :config
  (require 'company-capf)
  (require 'company-yasnippet)

  (add-to-list 'company-backends 'company-yasnippet)
  ;; Rewrites evil-complete to use company-dabbrev
  ;; (setq evil-complete-next-func     'doom/company-evil-complete-next
  ;;       evil-complete-previous-func 'doom/company-evil-complete-previous)

  (push 'company-sort-by-occurrence company-transformers)

  (define-key company-active-map "\C-w" nil)

  (global-company-mode +1)

  ;; NOTE: Doesn't look pretty outside of emacs-mac
  (require 'company-quickhelp)
  (company-quickhelp-mode +1)

  (require 'company-statistics)
  (company-statistics-mode +1))

(use-package company-dabbrev :commands company-dabbrev)
(use-package company-dabbrev-code :commands company-dabbrev-code)
(use-package company-etags :commands company-etags)
(use-package company-elisp :commands company-elisp)
(use-package company-files :commands company-files)
(use-package company-gtags :commands company-gtags)
(use-package company-ispell :commands company-ispell)
  
(use-package company-dict
  :config
  (add-to-list 'company-backends 'company-dict)
  )
  ;; :commands company-dict
  ;; :config
  ;; (setq company-dict-dir (concat user-emacs-directory "/dict"))
    ;; Optional: if you want it available everywhere
    ;; (add-to-list 'company-backends 'company-dict)
    
    ;; Optional: evil-mode users may prefer binding this to C-x C-k for vim
    ;; omni-completion-like dictionary completion
    ;; (define-key evil-insert-state-map (kbd "C-x C-k") 'company-dict)
  ;; )

(global-set-key (kbd "C-SPC") 'company-complete)
(provide 'config-company)
;;; config-company.el ends here