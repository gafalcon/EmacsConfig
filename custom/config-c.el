;; package --- Summary
;;; Code:
;;; Commentary:
(require 'rtags)
(require 'company-rtags)

(setq rtags-completions-enabled t)
(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))
(setq rtags-autostart-diagnostics t)
(rtags-enable-standard-keybindings)
;; (setq rtags-use-helm t)

(evil-define-key 'normal c-mode-base-map "gd" 'rtags-find-symbol-at-point)

(defun my-company-irony ()
  (unless (eq major-mode 'php-mode)
    (irony-mode)
    (unless (memq 'company-irony company-backends)
      (setq-local company-backends (cons 'company-irony company-backends)))
    )
  )

(add-hook 'c-mode-hook #'my-company-irony)
(add-hook 'c++-mode-hook #'my-company-irony)
(add-hook 'objc-mode-hook #'my-company-irony)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async)
  )

(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)

;;(setq company-backends (delete 'company-semantic company-backends))
(provide 'config-c)
;;; config-c.el ends here
