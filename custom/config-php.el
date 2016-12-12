;; PHP auto yasnippets
(require 'php-auto-yasnippets)
(define-key php-mode-map (kbd "C-c C-y") 'yas/create-php-snippet)
;;(payas/ac-setup)

;; PHP refactor mode: Use: C-c r and the following
;; lv: Convert a local variable to an instance variable
;; rv: Rename a local variable
;; em: Select a region and extract it to a new method
;; ou: Optimize use statements for FQCN
(require 'php-refactor-mode)
(add-hook 'php-mode-hook 'php-refactor-mode)
