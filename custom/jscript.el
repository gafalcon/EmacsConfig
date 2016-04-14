;;; package  --- Summary
;;; Code:
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js2-mode-hook 'ac-js2-mode)

;;Evaluate your javascript code for candidates set to true
;;(setq ac-js2-evaluate-calls t)

;; To check in external libraries
;;(setq ac-js2-external-libraries '("full/path/to/a-library.js"))

;;; Commentary:
;; Usage:
;; call 'run-skewer' and open Javascript file
;; C-c C-c = ac-js2-expand-function

;;--------------------------
;; Tern mode configuration
;;__________________________
(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
	 (require 'tern-autocomplete)
	 (tern-ac-setup)))


;;(provide 'jscript)
;;; jscript.el ends here

